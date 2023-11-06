start:
	@echo "Creating virtual environment..."
	python3 -m venv env
	. env/bin/activate; which python; pip install --upgrade pip
	mkdir -p src
	[ ! -f main.py ] && echo 'print("Hello, world!")' > main.py
	@echo "******************************************"
	@echo "Restart terminal to activate virtual environment"


get:
	@echo "Installing requirements..."
	pip install -r requirements.txt


freeze:
	@echo "Freezing requirements..."
	pip freeze > requirements.txt


install:
	@echo "Installing $(lib)..."
	pip install $(lib)
	pip freeze > requirements.txt


fastapi:
	@echo "Installing FastAPI..."
	pip install fastapi
	pip install "uvicorn[standart]"
	pip freeze > requirements.txt

run:
	@echo "Running..."
	python3 app.py