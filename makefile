build:
	sam build --use-container

deploy:
	make build
	sam deploy --guided

initiate-setup:
	make setup-pre-commit
	make install-req

setup-pre-commit:
	pip install pre-commit
	pre-commit install

install-req:
	pip install -r function/requirements.txt
	pip install -r tests/requirements.txt