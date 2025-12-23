# TA-Portuguesse-English-ST

A project for my master course 'Traducción Automática'. This project is about the usage and creations / train / fine-tune of models for speach translation between portuguesse and English

# Project paper

This [paper](https://github.com/MiquelGomezCorral/TA-Spanish-Esperanto-Translator-Paper) has been written for the results and deliver of the project.

# Dataset source

- Covost2, EuroparlST

# User project

- Create local env

```bash
 python3.12 -m venv venv
 source venv/bin/activate
 
 # install module
 pip install -e app/
 
 # install requirements
 pip install uv
 uv pip install -r requirements.txt

 pip install ipykernel
 python -m ipykernel install --user --name=venv --display-name "Python (venv)"

```

# Structure

```
.
├── app
│   ├── main.py
│   ├── setup.py
│   └── src
│       ├── config          <- Project configuration class
│       ├── data            <- Dataset wrapper
│       └── utils
├── data
│   ├── ...
├── docs
│   └── A2_Coursework_neural_models.pdf
├── example.env
├── models
│   ├── Trained models...
├── notebooks
│   └── ...
├── README.md
├── requirements.txt
├── scripts
│   └── run_notebooks.sh
```