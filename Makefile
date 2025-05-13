# Makefile for h2p development

PYTHON = python

.PHONY: install test lint format clean

install:
	$(PYTHON) -m venv .venv
	. .venv/Scripts/activate && pip install --upgrade pip setuptools wheel
	. .venv/Scripts/activate && pip install -r requirements.txt
	. .venv/Scripts/activate && playwright install

test:
	. .venv/Scripts/activate && PYTHONPATH=src pytest

lint:
	. .venv/Scripts/activate && flake8 src tests

format:
	. .venv/Scripts/activate && black src tests

clean:
	rm -rf .venv __pycache__ dist build *.egg-info .pytest_cache .coverage
