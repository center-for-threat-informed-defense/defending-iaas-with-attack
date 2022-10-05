ROOTDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
SOURCEDIR = docs/
BUILDDIR = docs/_build/

.PHONY: docs

docs:
	sphinx-build -M dirhtml "$(SOURCEDIR)" "$(BUILDDIR)"

docs-server:
	sphinx-autobuild -b dirhtml -a "$(SOURCEDIR)" "$(BUILDDIR)"

docs-pdf:
	docker run --rm -v "$(PWD)/docs":/docs sphinxdoc/sphinx-latexpdf:4.3.1 \
		bash -c "pip install -r requirements.txt && sphinx-build -M latexpdf /docs /docs/_build"
