# Define the virtual environment
VENV=env

# Define the main targets
all: install test

install:
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
