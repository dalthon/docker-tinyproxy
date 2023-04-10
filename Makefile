default: run

build:
	docker build -t tinyproxy .
.PHONY: build

run:
	docker run --rm -p 8888:8888 tinyproxy
.PHONY: run
