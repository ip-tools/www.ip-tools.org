# ===============
# local webserver
# ===============
webserver:
	cd htdocs; python -m SimpleHTTPServer 8001; cd ..


# ============
# Main targets
# ============


# -------------
# Configuration
# -------------

$(eval venvpath     := .venv)
$(eval pip          := $(venvpath)/bin/pip)
$(eval python       := $(venvpath)/bin/python)
$(eval pytest       := $(venvpath)/bin/pytest)
$(eval bumpversion  := $(venvpath)/bin/bumpversion)
$(eval twine        := $(venvpath)/bin/twine)
$(eval sphinx       := $(venvpath)/bin/sphinx-build)

# Setup Python virtualenv
setup-virtualenv:
	@test -e $(python) || python3 -m venv $(venvpath)



# -------
# Release
# -------

# Release this piece of software
# Synopsis:
#   make release bump=minor  (major,minor,patch)
release: bumpversion push


# ===============
# Utility targets
# ===============
bumpversion: install-releasetools
	@$(bumpversion) $(bump)

push:
	git push && git push --tags

install-releasetools: setup-virtualenv
	@$(pip) install --quiet --requirement requirements-release.txt --upgrade
