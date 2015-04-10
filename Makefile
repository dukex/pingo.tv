run: build
	make run-$(TARGET)

build: polymer
	cordova build $(TARGET)

run-android:
	cordova run android --device

run-browser:
	google-chrome --test-type --disable-web-security --user-data-dir=/tmp/temp_chrome_user_data_dir_for_cordova_browser file://$(CURDIR)/platforms/browser/www/index.html

polymer:
	vulcanize -o www/index.html www/app.html --csp

deps:
	npm install -g vulcanize
	npm install -g bower
