.PHONY: lint
lint:
	true
.PHONY: unit-test
unit-test:
	true
.PHONY: gh-release
gh-release:
	python setup.py sdist
	ghr -replace -t "${GITHUB_TOKEN}" -u "${GITHUB_USER}" -b "${CHANGELOG}" "${CURRENT_TAG}" dist

