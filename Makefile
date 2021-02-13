lint: yamllint hadolint
yamllint:
	yamllint .*.yaml .yamllint
hadolint:
	hadolint **/Dockerfile
