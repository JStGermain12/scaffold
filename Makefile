install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt	

format:
	black *.py

lint:
	black . # Formats the files automatically
	isort --check-only .
	flake8 .

test:
	python -m pytest -vv --cov=app test_hello.py

all: install lint test

