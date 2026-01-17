#!/bin/bash

# Exit on error
set -e

NOTEBOOK_DIR="notebooks_pt_en"

echo "Starting notebook execution..."
echo "========================================"

# Run non-extra notebooks first (L4.1, L4.2, L4.3, L4.4)
echo ""
echo "Running non-extra notebooks..."
echo "========================================"

echo "Running L4.1_ASR_Whisper_Baseline_Covost2.ipynb..."
jupyter nbconvert --to notebook --execute --inplace "$NOTEBOOK_DIR/L4.1_ASR_Whisper_Baseline_Covost2.ipynb"

echo "Running L4.2_ST_Whisper_Baseline_Covost2-ST.ipynb..."
jupyter nbconvert --to notebook --execute --inplace "$NOTEBOOK_DIR/L4.2_ST_Whisper_Baseline_Covost2-ST.ipynb"

echo "Running L4.3_ST_Cascade_Whisper_NLLB_Baseline_Covost2-ST.ipynb..."
jupyter nbconvert --to notebook --execute --inplace "$NOTEBOOK_DIR/L4.3_ST_Cascade_Whisper_NLLB_Baseline_Covost2-ST.ipynb"

echo "Running L4.4_ST_Cascade_Whisper_NLLB_Finetuning_Covost2-ST.ipynb..."
jupyter nbconvert --to notebook --execute --inplace "$NOTEBOOK_DIR/L4.4_ST_Cascade_Whisper_NLLB_Finetuning_Covost2-ST.ipynb"

# Run extra notebooks
echo ""
echo "Running extra notebooks..."
echo "========================================"

echo "Running Extra1-L4.2_ST_Whisper_Baseline_Europarl-ST.ipynb..."
jupyter nbconvert --to notebook --execute --inplace "$NOTEBOOK_DIR/Extra1-L4.2_ST_Whisper_Baseline_Europarl-ST.ipynb"

echo "Running Extra2.1-L4.1_ASR_Whisper_Baseline-Covost2-ST.ipynb..."
jupyter nbconvert --to notebook --execute --inplace "$NOTEBOOK_DIR/Extra2.1-L4.1_ASR_Whisper_Baseline-Covost2-ST.ipynb"

echo "Running Extra2.2-L4.3_ST_Cascade_Whisper_MADLAD_Baseline_Covost2-ST.ipynb..."
jupyter nbconvert --to notebook --execute --inplace "$NOTEBOOK_DIR/Extra2.2-L4.3_ST_Cascade_Whisper_MADLAD_Baseline_Covost2-ST.ipynb"

echo "Running Extra3-L4.4_ST_Cascade_Whisper_MADLAD_Finetuning_Covost2-ST.ipynb..."
jupyter nbconvert --to notebook --execute --inplace "$NOTEBOOK_DIR/Extra3-L4.4_ST_Cascade_Whisper_MADLAD_Finetuning_Covost2-ST.ipynb"

echo ""
echo "========================================"
echo "All notebooks executed successfully!"