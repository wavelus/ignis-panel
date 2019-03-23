PROJECT = ignis-panel
VERSION = $(file < VERSION)

.DEFAULT: build

build:
	docker build -t ${PROJECT}:latest .

deploy:
	kubectl create -f kubernetes --recursive

publish:
	docker build -t ${PROJECT}:${VERSION} .

version:
	echo "${PROJECT}:${VERSION}"
