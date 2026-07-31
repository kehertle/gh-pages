#!/usr/bin/env bash
set -euo pipefail

# Activates the local virtual environment and installs project dependencies.
VENV_DIR=".venv"

python3 -m venv "$VENV_DIR"
echo "Created virtual environment at $VENV_DIR"

# shellcheck disable=SC1091
source "$VENV_DIR/bin/activate"

python -m pip install --upgrade pip
python -m pip install -r requirements.txt

echo "Dependencies installed into $VENV_DIR"
"$VENV_DIR/bin/mkdocs" --version
