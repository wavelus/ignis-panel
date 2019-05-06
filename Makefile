PROJECT = ignis-panel
VERSION = $(file < VERSION)

.DEFAULT: test
.ONESHELL:
.SILENT:

test:
	# docker build -t ${PROJECT}:latest .
	cd frontend
	@echo "Start npm serve..."
	npm run serve

deploy:
	kubectl create -f kubernetes --recursive

publish:
	cd frontend
	npm run build
	@echo "Publishing files..."
	s3cmd sync -r --delete-removed dist/ s3://nomen.space
	@echo "Open http://nomen.space/ in browser."

prepare:
	if [[ "$EUID" -ne 0 ]]; then echo "You must be a root user."; exit; fi
	dnf install -y npm make python3 python3-pip docker
	cd frontend
	npm install
	pip3 install s3cmd
	@echo "Done. Now run $ make test"
