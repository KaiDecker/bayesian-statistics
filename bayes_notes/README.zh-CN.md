# 贝叶斯统计课堂笔记

[English](README.md)

本目录包含课程笔记的完整 LaTeX 源码及编译后的 PDF。

## 内容范围

- 绪论
- 第一章：先验分布与后验分布
- 第二章：贝叶斯推断，至 2.6 节“似然原理”

笔记优先采用老师板书中的记号和推导。课件用于核对例题编号；板书内容不完整时，仅在正文明确标注的地方补充推导。`main.tex` 通过 `intro.tex`、`chapter1.tex` 和 `chapter2.tex` 引入分章内容。

## 编译

在本目录运行：

```sh
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

需要安装包含 XeLaTeX、`latexmk`、`ctex` 和所需中文字体的 TeX 发行版。原始课件和课堂照片不包含在仓库中。
