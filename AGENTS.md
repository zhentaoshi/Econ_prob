# Repository Guidelines

## Project Structure & Module Organization

This repository contains teaching materials for a probability and statistics preparatory course. `LectureNotes/` is the Jupyter Book source: numbered notebooks (`01_prob_py.ipynb` through `04_python.ipynb`) are chapters, `intro.md` is the landing page, `_toc.yml` controls chapter order, and `_config.yml` controls book behavior. Keep figures in `LectureNotes/fig/`, bibliography entries in `book.bib`, and chapter data sets beside the notebooks that consume them. Root-level `README.md` describes the course; `Dockerfile` and `.devcontainer/devcontainer.json` define reproducible environments. Generated book files belong in `LectureNotes/_build/` and should not be committed.

## Build, Test, and Development Commands

- `jupyter-book build LectureNotes/` builds the HTML book and reports broken references or configuration errors.
- `python -m http.server 8000 --directory LectureNotes/_build/html` previews the built site at `http://localhost:8000`.
- `jupyter notebook LectureNotes/` opens the chapters for editing and execution.
- `cd LectureNotes && ghp-import -n -p -f _build/html` publishes the built site; run this only when intentionally updating GitHub Pages.

Use the dev container when local Python/Jupyter dependencies are unavailable. The repository currently has no pinned dependency file.

## Coding Style & Naming Conventions

Write notebook Python in a readable, PEP 8-aligned style: four-space indentation, `snake_case` variables/functions, and standard aliases such as `numpy as np` and `pandas as pd`. Keep Markdown explanations concise, introduce notation before code, and place imports near the start of a chapter. Name new chapters with a two-digit order and descriptive suffix, for example `05_regression_py.ipynb`, then add them to `_toc.yml`. Avoid unnecessary notebook-output churn.

## Testing Guidelines

There is no automated test suite or coverage target. Before submitting changes, execute edited notebooks from top to bottom, confirm outputs are reproducible, run the Jupyter Book build, and inspect the rendered equations, figures, citations, and links. Note that `_config.yml` currently disables build-time notebook execution and allows errors, so a successful build does not validate code cells.

## Commit & Pull Request Guidelines

Recent commits use short, direct subjects such as `update lec2` and `config devcontainer`. Prefer concise imperative summaries that identify the affected chapter or infrastructure. Pull requests should explain the teaching/content change, list affected notebooks or data, include screenshots for meaningful rendering changes, and report notebook execution and book-build results. Link an issue when one exists; never commit credentials, local environments, checkpoints, or generated build output.
