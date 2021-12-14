SHELL := /bin/bash
package:
	apk update && apk upgrade && apk add --update alpine-sdk && \
	apk add --no-cache bash git openssh make cmake 
	make update_tools && \ 
	make vendor-deps && \ 
	make install && \
	pip install --upgrade pip \
	awscli==1.14.37
	aws s3 sync . s3://zohaibcircleci	
	python --version
