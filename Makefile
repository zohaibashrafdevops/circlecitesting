SHELL := /bin/bash
package:
	aws s3 sync . s3://${BUCKET_NAME}	
	python --version
