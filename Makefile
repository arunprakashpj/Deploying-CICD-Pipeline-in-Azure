hello:
	echo "Starting..."
install:
	pip install --user --upgrade pip &&\
	pip install --user -r requirements.txt
test:
	python -m pytest -vv test_hello.py
lint:
	py -m pylint --disable=R,C hello.py
all:	install lint test