.PHONY: lint
lint:
	true
.PHONY: unit-test
unit-test:
	true
.PHONY: gh-release
gh-release:
	python setup.py sdist
	echo "${CHANGELOG}" >> CHANGELOG
	ghr -replace -t "${GITHUB_TOKEN}" -u "${GITHUB_USER}" -b $(cat CHANGELOG) "${CURRENT_TAG}" dist

