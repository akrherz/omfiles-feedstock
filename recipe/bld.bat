@echo on

REM open-meteo/python-omfiles/issues/113
set "CFLAGS=%CFLAGS% -msse4.1"

%PYTHON% -m pip install . --no-deps --no-build-isolation -vv
IF ERRORLEVEL 1 EXIT /B 1

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
IF ERRORLEVEL 1 EXIT /B 1
