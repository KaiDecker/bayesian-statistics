# 贝叶斯统计

[English](README.md)

这是为《贝叶斯统计》课程整理的学习资料，包括课堂笔记、板书电子转录、习题解答和考试速查表，使用中文编写并以 LaTeX 排版。

本仓库是学生个人整理的学习资料，不代表学校或任课教师的官方发布。课件、教材文件和课堂照片均未包含在仓库中。板书电子转录目录提供照片索引和清单供本地核对，但这些引用不代表照片已在仓库中公开。

## 内容

| 目录 | 内容 | PDF |
| --- | --- | --- |
| [`bayes_notes/`](bayes_notes/README.zh-CN.md) | 绪论、第一章，以及第二章至 2.6 节。 | [阅读](bayes_notes/main.pdf) |
| [`board_transcription/`](board_transcription/README.zh-CN.md) | 按小节整理的课堂板书电子转录。 | [阅读](board_transcription/main.pdf) |
| [`homework_chapter1/`](homework_chapter1/README.zh-CN.md) | 第一章部分习题解答。 | [阅读](homework_chapter1/main.pdf) |
| [`homework_chapter2/`](homework_chapter2/README.zh-CN.md) | 第二章 2.1–2.10 习题解答。 | [阅读](homework_chapter2/main.pdf) |
| [`exam_reference/`](exam_reference/README.zh-CN.md) | 第一、二章三页 A4 速查稿，含正态联合模型。 | [阅读](exam_reference/main.pdf) |

每个目录均包含独立的 `main.tex`、编译后的 `main.pdf` 和中英双语 README。笔记与板书转录优先采用老师的板书记号；习题解答按似然、先验、后验核和所求结果的顺序展开。板书转录尽量保留原记号，并将已知的模糊处另行记录。

## 编译

安装包含 XeLaTeX、`latexmk`、`ctex` 及所需中文字体的 TeX 发行版。在相应资料目录下运行：

```powershell
Set-Location bayes_notes
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

在其他文档目录中也可使用同一命令。也可以在仓库根目录通过 PowerShell 运行 `./build.ps1`，一次编译全部五份文档；添加 `-Target exam_reference` 只编译指定目录，或添加 `-Rebuild` 强制重新编译。`.aux`、`.log`、`.xdv` 等编译中间文件由 Git 忽略；正式 PDF 保留在仓库中。

当前源码在 Windows、TeX Live 2025 下编译。速查稿显式指定 `fontset=windows`；其他系统应选择可用中文字体集（如 `fandol`）并检查生成排版。

## 范围与来源

笔记和板书转录依据学生提供的课堂材料整理。部分习题解答和速查表使用教材或课件补充推导、核对公式。各目录 README 说明具体范围。原始照片和课程 PDF 由资料所有者自行保存，本仓库不再分发。

## 参与整理

纠错、转录约定和编译检查见 [参与说明](CONTRIBUTING.zh-CN.md)。提交信息采用全英文 [Conventional Commits](https://www.conventionalcommits.org/)。

## 许可证

仓库作者的原创贡献采用 [知识共享署名 4.0 国际许可协议（CC BY 4.0）](LICENSE)。允许分享、修改及商业使用，但须适当署名、提供许可证链接并注明修改。署名时请注明 KaiDecker，并链接到[本仓库](https://github.com/KaiDecker/bayesian-statistics)。

教材、讲义和板书等第三方内容不在此许可范围内，其权利仍归原权利人。此许可仅适用于仓库作者有权授权的贡献。
