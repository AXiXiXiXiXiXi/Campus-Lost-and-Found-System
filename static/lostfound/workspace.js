(() => {
    const toggle = document.querySelector("[data-workspace-toggle]");
    if (!toggle) return;

    const nav = document.getElementById(toggle.getAttribute("aria-controls"));
    const desktop = window.matchMedia("(min-width: 64rem)");
    const currentLink = () => nav.querySelector("[aria-current]") || nav.querySelector("a");

    function setExpanded(expanded) {
        toggle.setAttribute("aria-expanded", String(expanded));
        nav.hidden = !expanded;
    }

    function syncViewport() {
        const active = document.activeElement;
        toggle.hidden = desktop.matches;
        setExpanded(desktop.matches);
        if (desktop.matches && active === toggle) currentLink()?.focus();
        if (!desktop.matches && nav.contains(active)) toggle.focus();
    }

    toggle.addEventListener("click", () => {
        const open = nav.hidden;
        setExpanded(open);
        if (open) currentLink()?.focus();
    });

    function closeOnEscape(event) {
        if (event.key !== "Escape" || desktop.matches || nav.hidden) return;
        event.preventDefault();
        setExpanded(false);
        toggle.focus();
    }

    toggle.addEventListener("keydown", closeOnEscape);
    nav.addEventListener("keydown", closeOnEscape);
    desktop.addEventListener("change", syncViewport);
    syncViewport();
})();
