# ===============
# local webserver
# ===============
webserver:
	cd htdocs; python -m SimpleHTTPServer 8001; cd ..


# ===================
# bumpversion snippet
# ===================

$(eval venvpath     := .venv27)
$(eval bumpversion  := $(venvpath)/bin/bumpversion)

virtualenv:
	@test -e $(venvpath)/bin/python || `command -v virtualenv` --python=`command -v python` --no-site-packages $(venvpath)

bumpversion: virtualenv
	@$(venvpath)/bin/pip install bumpversion
	$(bumpversion) $(bump)

release: bumpversion

