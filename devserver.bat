@echo off
IF NOT EXIST .venv (
    echo Creating virtual environment...
    python -m venv .venv
)
call .venv\Scripts\activate
pip install -r requirements.txt
if "%PORT%"=="" set PORT=80
python -m flask --app main run -p %PORT% --debug