#!/usr/bin/make

.PHONY: docs

docs:
	mkdocs build

serve:
	mkdocs serve
