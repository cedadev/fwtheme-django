# User Guide

## Dependencies

The theme is intended as a guide as to how to construct a django theme for a
particular organisation (e.g. CEDA Division, CEDA Services, JASMIN).
Templates and static content for this theme are in the "fwtheme_django" folder
beneath each of "template" and "static" folders. It is intended that any theme
which use this as a guide would over-ride this theme's assets by providing its 
own assets in the same directory structure as alternatives.

Example:

Sam produces an app called samsapp.
He tests it using this theme (fwtheme-django), whose templates etc are in

templates/fwtheme_django

So he makes sure that the "base.html" template of his own app just extends the
layout template of this one:

base.html:
{% extends "fwtheme_django/layout.html" %}

That should provide all the required functionality (as a check)
But once that's working, he can then replace* fwtheme_django with
fwtheme_django_ceda_serv or some other organisation-specific theme. But because 
this also provides a layout template at the same path, i.e.

templates/fwtheme_django/layout.html

he doesn't need to change any of the code in his own app, other than in settings.py
of the project where he's running his app.

*Since fwtheme_django_ceda_serv derives from (rather than completely replaces)
fwtheme_django, it's important that BOTH remain in INSTALLED_APPS, but the order
is significant to achieve the correct precedence:
```
INSTALLED_APPS = (
    "samsapp",
    "fwtheme_django_ceda_serv",
    "fwtheme_django",
)
```

