install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt	

lint: install
    black .
    isort --check-only .
    flake8 .

format:
	black *.py

lint:
	black --check .
	isort --check-only .
	flake8 .

test:
	python -m pytest -vv --cov=app test_hello.py

all: install lint test

