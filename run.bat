@echo off
cd /d "%~dp0"
powershell -ExecutionPolicy Bypass -File "audio-dataset-preprocessor.ps1"
pause