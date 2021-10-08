"""Template to allow the easy handling of urls on the CEDA Artefacts server."""
import urllib

from django import template
from django.conf import settings

register = template.Library()


@register.simple_tag
def artefact(path):
    """Construct the path to an artefact from the path given in settings."""
    base = settings.ARTEFACT_URL
    return urllib.parse.urljoin(base, path)
