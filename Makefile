.PHONY: bump-patch
bump-patch:
	@bump2version patch
	@poetry build
	@git add .
	@git commit -m "updating package"
	@git push --tags
	@git push

.PHONY: bump-minor
bump-minor:
	@bump2version minor
	@poetry build
	@git add .
	@git commit -m "updating package"
	@git push --tags
	@git push

.PHONY: bump-major
bump-major:
	@bump2version major
	@poetry build
	@git add .
	@git commit -m "updating package"
	@git push --tags
	@git push