install:
	pip install --upgrade pip && \
		pip install -r requirements.txt

format:
	python -m black --preview *.py

lint:
	python -m pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py

all: install lint test
