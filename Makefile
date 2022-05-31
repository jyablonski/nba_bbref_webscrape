.PHONY: bump-patch
bump-patch:
	@poetry build
	@bump2version patch
	@git push --tags
	@git push

.PHONY: bump-minor
bump-minor:
	@poetry build
	@bump2version minor
	@git push --tags
	@git push

.PHONY: bump-major
bump-major:
	@poetry build
	@bump2version major
	@git push --tags
	@git push