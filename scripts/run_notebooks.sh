#!/bin/bash

# Exit on error
set -e

echo "Starting notebook execution..."


echo "Running ES-EO-L3.5_NMT_LLAMA-3_Prompting.ipynb..."
# jupyter nbconvert --to notebook --execute --inplace "notebooks/ES-EO-L3.5_NMT_LLAMA-3_Prompting.ipynb"

echo "All notebooks executed successfully!"