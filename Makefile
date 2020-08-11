.PHONY: lint
lint:
	true
.PHONY: unit-test
unit-test:
	true
.PHONY: gh-release
gh-release:
	python setup.py sdist
	ghr -t ${GITHUB_TOKEN} -u ${GITHUB_USER}  ${GIT_TAG} -replace dist
