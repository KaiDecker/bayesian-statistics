# Course Notes

[简体中文](README.zh-CN.md)

This directory contains the complete LaTeX source for the course notes and the compiled PDF.

## Coverage

- Introduction
- Chapter 1: Prior and Posterior Distributions
- Chapter 2: Bayesian Inference, through Section 2.6 (the likelihood principle)

The notes prioritize the instructor's blackboard notation and derivations. Lecture slides are used to verify exercise numbering and to supply explicitly identified derivations where the board material is incomplete. The chapter sources are split into `intro.tex`, `chapter1.tex`, and `chapter2.tex`, included by `main.tex`.

## Build

From this directory, run:

```sh
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

Use a TeX distribution with XeLaTeX, `latexmk`, `ctex`, and the required Chinese fonts. Original course files and classroom photographs are not included.
