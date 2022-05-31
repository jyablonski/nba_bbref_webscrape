.PHONY: bump-patch
bump-patch:
	@poetry build
	@git commit -m "updating package"
	@bump2version patch
	@git push --tags
	@git push

.PHONY: bump-minor
bump-minor:
	@poetry build
	@git commit -m "updating package"
	@bump2version minor
	@git push --tags
	@git push

.PHONY: bump-major
bump-major:
	@poetry build
	@git commit -m "updating package"
	@bump2version major
	@git push --tags
	@git push