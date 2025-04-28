#!/bin/bash


EXIT_STATUS=0

black --config .black.toml . || ((EXIT_STATUS++))
pylint --rcfile .pylintrc *.py || ((EXIT_STATUS++))
flake8 --config .flake8 || ((EXIT_STATUS++))
mypy . --exclude venv || ((EXIT_STATUS++))
ruff check --config ruff.toml --fix || ((EXIT_STATUS++))
# isort . --settings .isort.cfg --exclude venv || ((EXIT_STATUS++))

echo ---- $EXIT_STATUS
exit $EXIT_STATUS
