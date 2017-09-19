## SUBLIMETEXT
link User
rm -rf .config/sublime-text-3/Packages/User
ln -s ~/seafile/dev/dotfiles/User ~/.config/sublime-text-3/Packages/User
User
modifier le package django command pour runserver et runservplus etshellplus


## python base package
dev : flake8 isort ipython ipdb jedi pytest pytest-cov yap

## django
base : django
dev : django-extensions werkzeug pytest-django mixer

