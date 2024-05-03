.PHONY: all init docker-build docker-up
all: init docker-build docker-up

.PHONY: submodules
submodules:
	@echo "Updating submodules"
	git submodule update --init --recursive

.PHONY: docker-build
docker-build:
	@echo "Building docker images"
	docker compose build

.PHONY: docker-up
docker-up:
	@echo "Creating docker containers"
	docker compose up -d