# fwtheme-django

Django app providing vanilla Bootstrap v5 theme for Django-based web apps.
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

## Overriding the error page templates

The custom error pages provide a basic, styled message but provide no context.
The help beacon is present on the error page so that users can ask for assistance
and we are given the URL the user tried when they encountered the issue.

In some case you may want to add extra detail to the error pages. If you just want a different base
template or add other static text, you simply create corresponding templates in the root of your template
tree for you app. **Make sure your app is higher in the app list than `fwtheme-django`**

e.g
```
app/
    templates/
            app/
                template1.html
                template2.html
                ...
            400.html
            403.html
            404.html
            500.html
```

See [the code](https://github.com/django/django/blob/master/django/views/defaults.py) to see what context is available. 
Under the default views the avialable context:

| Error | Context |
|-------|---------|
| 400   |         |
| 403   | `exception` |
| 404   | `request_path` `exception` |
| 500   |         |

If you need to add dynamic content, you will have to [override the views](https://docs.djangoproject.com/en/dev/topics/http/views/#customizing-error-views).

