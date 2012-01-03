include Dependencies/GPGTools_Core/make/default

all: dmg

update:
	@git submodule foreach git pull origin master
	@git pull

compile:
	@./build-script.sh

test: deploy

clean:
	chmod -R o+w build
	rm -rf build

