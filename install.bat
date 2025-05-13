@echo off
pip install virtualenv
virtualenv .venv
.\.venv\Scripts\activate.ps1
pip install -r requirements.txt
playwright install
echo Environment setup complete!
