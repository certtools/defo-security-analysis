#!/usr/bin/make

.PHONY: docs

docs:
	mkdocs build -f report/mkdocs.yml
