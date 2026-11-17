# 第一章习题解答

[English](README.md)

本目录为第一章部分习题解答，使用独立 LaTeX 源文件排版。解题按课堂习惯依次写似然函数、先验分布或密度、后验核、后验分布及题目所求量。

Gamma 分布采用率参数化。当前收录题号为 1.1–1.3、1.5–1.10、1.12、1.15 和 1.19。

## 编译

在本目录运行：

```sh
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

需要 XeLaTeX、`ctex` 和所需中文字体。
