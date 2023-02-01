# Makefile for high-performing-engineers-model

# Define the virtual environment
VENV=env

# Define the main targets
all: install test

install:
	# Create the directories and files if they don't exist
	mkdir -p data/raw data/processed models/trained src notebooks reports/figures reports/results tests
	touch .gitignore LICENSE README.md
	# Create the virtual environment
	python3 -m venv $(VENV)
	# Activate the virtual environment
	source $(VENV)/bin/activate
	# Install the required packages
	pip install -r requirements.txt

clean:
	# Remove the virtual environment
	rm -rf $(VENV)

test:
	# Run the tests
	python -m unittest discover -v
