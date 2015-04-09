run: build
	cordova run android --device

build:
	vulcanize -o www/index.html www/app.html --csp

deps:
	npm install -g vulcanize
	npm install -g bower
