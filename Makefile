VERSION_FILE := version
VERSION := $(shell cat ${VERSION_FILE})
IMAGE_REPO := achebel/showcasefast

.PHONY: build
build:
	docker build -t $(IMAGE_REPO):$(VERSION)-$(SHA) .

.PHONY: registry-login
az-login:
	@az login \
		--service-principal \
		--username $(SERVICE_PRINCIPAL_APP_ID) \
		--password $(SERVICE_PRINCIPAL_SECRET) \
		--tenant $(SERVICE_PRINCIPAL_TENANT)

.PHONY: push
push:
	docker push $(IMAGE_REPO):$(VERSION)-$(SHA)

.PHONY: deploy
deploy:
	sed 's/SHA/$(SHA)/g; s/VERSION/$(VERSION)/g' ./deployment.yaml | \
		kubectl apply -f -