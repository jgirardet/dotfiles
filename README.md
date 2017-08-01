## Project Setup
* package to install : pytest pytest-django pytest-coverage mixer
* create test_settings.py next to origninal setting file
```
from .settings import *

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.sqlite3",
        "NAME": ":memory:",
    }
}

EMAIL_BACKEND = 'django.core.mail.backends.locmem.EmailBackend'
```
* add the pytest.ini next to manage.py
```
[pytest]
DJANGO_SETTINGS_MODULE = dcb.test_settings
addopts = --nomigrations --cov=. --cov-report=html
```
* add the .coveragerc next to manage.py
```
[run]
omit =
  *apps.py,
  *migrations/*,
  *settings*,
  *tests/*,
  *urls.py,
  *wsgi.py,
manage.py
```
* creat new-app and add "tests" dir with a __init__.py
* create nex "test-file.py" for each "file.py"
* delete the test.py inside app

## Models testing
* call pytest, mixer and database mark protect at start of file
```
from mixer.backend.django import mixer
import pytest

pytestmark = pytest.mark.django_db

```
* on appelle le mixer de la facon suivante :
```
obj = mixer.blend('app.modelnam')
ou
obj = mixer.blend('app.modelname', field="giveadefaultvalue")
```

## Admin testing
* il faut ajouter le code à chaque fonction de class :
```
from django.contrib.admin.sites import AdminSite

site = AdminSite()
post_admin = admin.PostAdmin(models.Post, site)

```

##Views testing django

'''
from django.test import RequestFactory

        req = RequestFactory().get ('/')
        resp = views.HomeView.as_view()(req)
'''

##Serializers


##Views testing drf

