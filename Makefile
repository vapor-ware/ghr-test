
gh-release:
	python setup.py sdist
	ghr -t ${GITHUB_TOKEN} -u ${GITHUB_USER} ${GIT_TAG} dist
