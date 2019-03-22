# fwtheme-django

Django app providing vanilla Bootstrap v4 theme for Django-based web apps.
Pulls in "default" theme from Bootswatch.

## Installation

`fwtheme-django` can be installed directly from Github using pip:

```
$ pip install git+https://git@github.com/cedadev/fwtheme-django.git
```

## Variables

If your application would be best served in a full width container, you can use
the boolean variable `CONTAINER_FLUID` in your settings.py

| Variable         | Options         |
|------------------|-----------------|
| `CONTAINER_FLUID`|`True` or `False`|