SHELL := /bin/bash
sync:
	aws s3 sync . s3://${BUCKET_NAME}
	python --version
