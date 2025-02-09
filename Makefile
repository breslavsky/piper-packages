.PHONY: release tag-specific tag-latest force-latest check-latest

# Default target for release
release:
	$(eval VERSION := $(filter-out $@,$(MAKECMDGOALS)))
	$(MAKE) tag-specific VERSION=$(VERSION)
	$(MAKE) force-latest VERSION=$(VERSION)

# Tag a specific version
tag-specific:
	git tag $(VERSION)
	git push origin $(VERSION)

# Tag the "latest"
tag-latest:
	git tag latest
	git push origin latest

# Force update the "latest" tag to a specific version
force-latest:
	git tag -f latest $(VERSION)
	git push origin latest --force

# Check the current "latest" tag
latest:
	@echo "Current latest tag is:"
	@git describe --tags --exact-match $(shell git rev-parse latest 2>/dev/null) || echo "No 'latest' tag exists."

# Prevent `make` from treating arguments as targets
%:
	@: