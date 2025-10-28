# [[ project_name ]]

[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)

[[ description ]]

## Dependencies

To use this project, you need to install the following components:

- [uv (For Python package and project manager)](https://github.com/astral-sh/uv)
  - [Python (>=[[ python_version ]])](https://www.python.org/)
- [Git](https://git-scm.com/)

## Project Organization

```markdown
├── data  
│   ├─ external              <- Data from third party sources.  
│   ├─ interim               <- Intermediate data that has been transformed.  
│   ├─ processed             <- The final, canonical data sets for modeling.  
│   └─ raw                   <- The original, immutable data dump.  
│  
├── docs                     <- Configuration files and folders for Sphinx.  
│  
├── models                   <- Trained and serialized models or model predictions, model summaries.  
│  
├── notebooks                <- Jupyter notebooks. Naming convention is a number (for ordering),  
│                               the creator's initials, and a short `-` delimited description, e.g.  
│                               `1.0-initial-data-exploration.ipynb`.  
│  
├── references               <- Data dictionaries, manuals, and all other explanatory materials.  
│  
├── reports                  <- Generated analysis as HTML, PDF, LaTeX, etc.  
│   └── figures              <- Generated graphics and figures to be used in reporting.  
│  
├── src                      <- Source code for use in this project.
│   └── [[ module_name ]]  
│       ├── modeling  
│       │   ├── predict.py   <- Code to run model inference with trained models.  
│       │   └── train.py     <- Code to train models.  
│       │  
│       ├── __init__.py      <- Makes [[ module_name ]] a Python module.  
│       │  
│       ├── config.py        <- Store useful variables and configuration  
│       │  
│       ├── dataset.py       <- Scripts to download or generate data  
│       │  
│       ├── features.py      <- Code to create features for modeling  
│       │  
│       └── plots.py         <- Code to create visualizations  
│  
├── LICENSE                  <- License file.  
│  
├── Makefile                 <- Makefile with commands like `make` or `make setup`...  
│  
├── pyproject.toml           <- The requirements file for reproducing the analysis environment.  
│  
└── README.md                <- The top-level README for developers using this project.  
```

--------

## Credits

Project based on the [cookiecutter data science project template.](https://drivendata.github.io/cookiecutter-data-science/) #cookiecutterdatascience

## License

[[[ license ]] License](LICENSE)
