default: run

build:
	docker build -t dalthon/tinyproxy .
.PHONY: build

release: build
	docker push dalthon/tinyproxy
.PHONY: release

run:
	docker run --rm -p 8888:8888 dalthon/tinyproxy
.PHONY: run
