#!/bin/bash
set -e

echo "=== Installing JupyterLite build dependencies ==="
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements-deploy.txt

echo "=== Building JupyterLite site ==="
jupyter lite build --contents content --output-dir dist

echo "=== Build finished successfully ==="
