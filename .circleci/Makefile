
SHELL = /bin/bash -eo pipefail
all: package
include= "./config.yml"
package:
	echo "run all packages"
	#	apk add --no-cache \
	#Spy-pip=9.0.0-r1
	pip install --upgrade pip \
	awscli==1.14.37
	aws s3 sync . s3://zohaibcircleci	
	python --version
