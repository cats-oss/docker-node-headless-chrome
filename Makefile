.PHONY: bump
bump:
	if [ -z "$(VERSION)" ]; then exit 1; fi
	sed -i "" -e "s/^FROM node:.*/FROM node:$(VERSION)/" Dockerfile
	git add Dockerfile
	git commit -m "feat: Bump node to $(VERSION)"
	git tag $(VERSION)-1
