# Chapter 2 Exercises

[简体中文](README.zh-CN.md)

Worked solutions for Chapter 2 exercises 2.1–2.10, typeset from a standalone LaTeX source. Solutions show the likelihood, prior, posterior kernel, normalization or distribution identification, and the requested estimate or inference result.

The notation follows the course materials. The Gamma distribution uses the rate parameterization, and the second parameter of a normal distribution is its variance.

## Build

From this directory, run:

```sh
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

Use XeLaTeX with `ctex` and the required Chinese fonts.
