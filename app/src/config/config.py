"""Configuration file.

Configuration of project variables that we want to have available
everywhere and considered configuration.
"""
import os
from dataclasses import dataclass
from typing import Literal

@dataclass
class Configuration:
    DATA_PATH: str = os.path.join("..", "data")
    MODELS_PATH: str = os.path.join("..", "models")
    RESULTS_PATH: str = os.path.join("..", "results")

    logging_dir: str = os.path.join(RESULTS_PATH, "logs")
    corpus_path: str = os.path.join(DATA_PATH, "cv-corpus-24.0-2025-12-05/pt")

    europarl_dev_folder: str = os.path.join(DATA_PATH, "Europarl-ST.dev/dev")
    europarl_test1_folder: str = os.path.join(DATA_PATH, "Europarl-ST.test.p1/test")

    europarl_dev_path: str = os.path.join(DATA_PATH, europarl_dev_folder,"Europarl-ST.v2.es.en.dev.200.lst")
    europarl_test1_path: str = os.path.join(DATA_PATH, europarl_test1_folder,"Europarl-ST.v2.es.en.test.200.lst")
    # europarl_test2_path: str = os.path.join(DATA_PATH, "Europarl-ST.test.p2/test/Europarl-ST.v2.es.en.test.200.lst")

    output_model_dir: str = os.path.join(MODELS_PATH, "pt_to_en_finetuned")

    # =========================== PARAMETERS ===========================
    seed: int = 42
    test_split: float = 0.15

    trans_code: str = "pt_en"
    model_name: str = ""
    fine_tune_model_name: str = "finetuned-pt-to-en"
    src_name: str = "Portuguese"
    tgt_name: str = "English"
    src_abr: str = "pt"
    tgt_abr: str = "en"
    src_code: str = "por_Latn"
    tgt_code: str = "eng_Latn"
    task_prefix: str = f"translate from {src_name} to {tgt_name}: "
    num_shots: int = 5  # For prompting

    max_tok_length: int = 16
    test_batch_size: int = 32
    batch_size: int = 96
    max_epoch: int = 5
    input_col: Literal['refrence', 'hypothesis'] = 'hypothesis'
    eval_input_col: str = "hypothesis"
    normalize: bool = True

    def __post_init__(self):
        ...

    