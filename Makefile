all:	lint check-readme

lint:
	ansible-lint -c ansible-lint.yml
	yamllint -c yml_lint_config $$(find . -type f -name '*.yml' )

check-readme:
	./check-readmes
