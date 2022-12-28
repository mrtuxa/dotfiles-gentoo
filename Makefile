default: bootstrap

install-emerge:
	emerge -a - < pkgs/portage

install-pythons:
	pip install -r pkgs/python

setup-config:
	cp -rv home/.config ~/.config/

bootstrap: install-emerge install-pythons setup-config
