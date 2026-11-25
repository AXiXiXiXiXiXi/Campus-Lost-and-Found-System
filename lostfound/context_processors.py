from django.conf import settings


def support_contact(request):
    return {"support_email": settings.CAMPUS_SUPPORT_EMAIL}
