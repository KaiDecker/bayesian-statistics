# 第二章习题解答

[English](README.md)

本目录收录第二章 2.1–2.10 习题解答，使用独立 LaTeX 源文件排版。解答依次展示似然函数、先验、后验核、归一化或分布识别，以及题目要求的估计或推断结果。

记号沿用课程材料。Gamma 分布采用率参数化；正态分布的第二个参数表示方差。

## 编译

在本目录运行：

```sh
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

需要 XeLaTeX、`ctex` 和所需中文字体。
