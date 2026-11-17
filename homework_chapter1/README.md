# Chapter 1 Exercises

[简体中文](README.zh-CN.md)

Selected worked solutions for Chapter 1, typeset from a standalone LaTeX source. The solutions follow the classroom sequence: likelihood, prior distribution or density, posterior kernel, posterior distribution, and the requested quantity.

The Gamma distribution uses the rate parameterization. The covered exercise numbers are 1.1–1.3, 1.5–1.10, 1.12, 1.15, and 1.19.

## Build

From this directory, run:

```sh
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

Use XeLaTeX with `ctex` and the required Chinese fonts.
