include Makefile.inc

.PHONY: serve build deploy clean

## Serve site locally
serve: build
	@$(RUN) mkdocs serve --livereload -o

## Build site
build: clean
	@$(RUN) mkdocs build

##! Deploy site
deploy: clean
	@${RUN} mkdocs gh-deploy

## Clean site
clean:
	@rm -rf site
