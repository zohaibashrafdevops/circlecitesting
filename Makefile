SHELL = /bin/bash -eo pipefail
include="./.circleci/config.yml"
allpackage: package
package:
	sudo apt-get install make
	echo "run all packages"
	#	apk add --no-cache \
	# Spy-pip=9.0.0-r1
	pip install --upgrade pip \
	awscli==1.14.37
	aws s3 sync . s3://zohaibcircleci	
	python --version
