lint: markdown yamllint hadolint
markdown:
	markdownlint --fix .github/**/*.md **/*.md
yamllint:
	yamllint .*.yaml .yamllint
hadolint:
	hadolint **/Dockerfile
