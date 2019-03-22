# encoding: utf-8
"""

"""
__author__ = 'Richard Smith'
__date__ = '22 Mar 2019'
__copyright__ = 'Copyright 2018 United Kingdom Research and Innovation'
__license__ = 'BSD - see LICENSE file in top-level package directory'
__contact__ = 'richard.d.smith@stfc.ac.uk'

from django import template
from django.conf import settings

register = template.Library()

@register.simple_tag
def is_container_fluid():
    """
    Set the parent

    :return:
    """
    fluid = False

    if hasattr(settings, 'CONTAINER_FLUID'):
        fluid = settings.CONTAINER_FLUID

    return fluid


    # return '-fluid' if fluid else ''
#