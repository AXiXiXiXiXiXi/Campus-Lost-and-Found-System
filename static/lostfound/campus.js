function installImageFallback(image) {
    const fallback = image.parentElement.querySelector("[data-image-fallback]");
    const replaceImage = () => {
        image.hidden = true;
        fallback.hidden = false;
    };

    image.addEventListener("error", replaceImage, { once: true });
    if (image.complete && image.naturalWidth === 0) replaceImage();
}

function installFeedbackDismissal(button) {
    button.hidden = false;
    button.addEventListener("click", () => {
        const message = button.closest(".feedback");
        const restoreFocus = message.contains(document.activeElement);
        message.remove();
        if (restoreFocus) document.getElementById("main").focus();
    });
}

function focusValidation() {
    const summary = document.querySelector("[data-form-errors]");
    const feedback = summary || document.querySelector("[data-focus-feedback]");
    feedback?.focus();

    summary?.addEventListener("click", (event) => {
        const link = event.target.closest('a[href^="#"]');
        if (!link) return;
        const field = document.getElementById(link.hash.slice(1));
        const controls = "input:not([type=hidden]), textarea, select";
        const target = field?.matches(controls) ? field : field?.querySelector(controls);
        if (target) {
            event.preventDefault();
            target.focus();
        }
    });
}

function installAccountMenu(menu) {
    menu.addEventListener("keydown", (event) => {
        if (event.key !== "Escape" || !menu.open) return;
        event.preventDefault();
        menu.open = false;
        menu.querySelector("summary").focus();
    });

    function closeWhenLeaving(event) {
        if (menu.open && !menu.contains(event.target)) menu.open = false;
    }

    document.addEventListener("click", closeWhenLeaving);
    document.addEventListener("focusin", closeWhenLeaving);
}

function installSchoolLookup(wrapper) {
    const query = wrapper.querySelector('input[role="combobox"]');
    const select = document.getElementById(wrapper.dataset.schoolLookup);
    const popup = wrapper.querySelector("[data-school-options]");
    const list = popup.querySelector('[role="listbox"]');
    const count = popup.querySelector('[role="status"]');
    const schools = Array.from(select.options).filter((option) => option.value !== "");
    let activeIndex = -1;

    function highlight(index) {
        list.children[activeIndex]?.setAttribute("aria-selected", "false");
        activeIndex = index;
        const next = list.children[index];
        if (next) {
            next.setAttribute("aria-selected", "true");
            query.setAttribute("aria-activedescendant", next.id);
        } else {
            query.removeAttribute("aria-activedescendant");
        }
    }

    function closePopup() {
        popup.hidden = true;
        query.setAttribute("aria-expanded", "false");
        highlight(-1);
    }

    function showMatches(highlightFirst) {
        const term = query.value.trim().toLocaleLowerCase();
        const matches = schools.filter((school) => school.text.toLocaleLowerCase().includes(term));
        const options = matches.map((school) => {
            const option = document.createElement("li");
            option.id = list.id + "-" + school.value;
            option.dataset.value = school.value;
            option.textContent = school.text;
            option.setAttribute("role", "option");
            option.setAttribute("aria-selected", "false");
            return option;
        });

        highlight(-1);
        list.replaceChildren(...options);
        popup.hidden = false;
        query.setAttribute("aria-expanded", "true");
        popup.scrollTop = 0;
        count.textContent = matches.length ? "共 " + matches.length + " 所学校" : "没有找到匹配的学校";
        if (highlightFirst && term && options.length) highlight(0);
    }

    function syncSelection() {
        query.value = select.value ? select.selectedOptions[0].text : "";
        closePopup();
    }

    function choose(option) {
        if (!option) return;
        select.value = option.dataset.value;
        select.dispatchEvent(new Event("change", { bubbles: true }));
    }

    function handleKey(event) {
        if (event.isComposing || event.keyCode === 229) return;

        if (event.key === "Tab" || event.key === "Escape") {
            if (event.key === "Escape" && !popup.hidden) event.preventDefault();
            closePopup();
        } else if (event.key === "Enter") {
            event.preventDefault();
            if (!popup.hidden) choose(list.children[activeIndex]);
        } else if (event.key === "ArrowDown" || event.key === "ArrowUp") {
            event.preventDefault();
            if (popup.hidden) showMatches(false);
            const length = list.children.length;
            if (!length) return;
            const next = event.key === "ArrowDown"
                ? (activeIndex + 1) % length
                : (activeIndex > 0 ? activeIndex - 1 : length - 1);
            highlight(next);
            list.children[next].scrollIntoView({ block: "nearest" });
        }
    }

    function closeWhenLeaving(event) {
        if (!popup.hidden && !wrapper.contains(event.target)) closePopup();
    }

    wrapper.hidden = false;
    syncSelection();
    select.addEventListener("change", syncSelection);
    query.addEventListener("focus", () => showMatches(true));
    query.addEventListener("input", () => showMatches(true));
    query.addEventListener("keydown", handleKey);
    query.addEventListener("click", () => {
        if (popup.hidden) showMatches(true);
    });
    list.addEventListener("mousedown", (event) => {
        if (event.target.closest('[role="option"]')) event.preventDefault();
    });
    list.addEventListener("click", (event) => choose(event.target.closest('[role="option"]')));
    document.addEventListener("focusin", closeWhenLeaving);
    document.addEventListener("click", closeWhenLeaving);
}

document.querySelectorAll("[data-entry-image]").forEach(installImageFallback);
document.querySelectorAll("[data-dismiss-feedback]").forEach(installFeedbackDismissal);
document.querySelectorAll("[data-account-menu]").forEach(installAccountMenu);
document.querySelectorAll("[data-school-lookup]").forEach(installSchoolLookup);
focusValidation();

document.querySelectorAll("form[data-confirm]").forEach((form) => {
    form.addEventListener("submit", (event) => {
        if (!window.confirm(form.dataset.confirm)) event.preventDefault();
    });
});

const systemNotice = document.getElementById("is_system_notice");
const noticeSchool = document.getElementById("school_select");
if (systemNotice && noticeSchool) {
    const syncNoticeScope = () => { noticeSchool.disabled = systemNotice.checked; };
    systemNotice.addEventListener("change", syncNoticeScope);
    syncNoticeScope();
}
