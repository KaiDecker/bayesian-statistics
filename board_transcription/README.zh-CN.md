# 板书电子转录

[English](README.md)

本目录将目前可读取的课堂板书排版为电子稿，并与带解释的课程笔记分别维护。

转录尽量保留板书记号、例号、简写和近似数值；合并重叠照片，只调整排版、换行和小节归属。不静默订正数学错误，也不根据课件补齐板书缺失的内容。已知的读法选择和来源不一致记录在 `transcription_checks.md`。

## 文件

| 路径 | 内容 |
| --- | --- |
| `main.tex` | 文档入口 |
| `intro.tex` | 绪论板书 |
| `chapter1/section1_*.tex` | 第一章各小节板书 |
| `chapter2/section2_*.tex` | 第二章各小节板书 |
| `administrative.tex` | 历史课堂安排 |
| `source_index.md` | 小节与照片索引 |
| `source_manifest.csv` | 照片编号、原文件名、哈希值及归属 |
| `transcription_checks.md` | 模糊读法及来源不一致记录 |

照片索引覆盖三批材料（E01–E31、W01–W21、L01–L60）。原始照片没有包含在仓库中，索引中的文件名仅供本地查找。当前版本没有转录 1.4 和例 2.2.6，因为在可读取的照片批次中没有定位到相应板书。

## 编译

在本目录运行：

```sh
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

需要 XeLaTeX、`ctex`、`amsmath`、`tikz` 及所需中文字体。在 Windows 以外的系统上可能需要调整字体配置。
