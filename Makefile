SHELL := /bin/bash
package:
	aws s3 sync . s3://zohaibcircleci	
	python --version
