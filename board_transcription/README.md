# Blackboard Transcription

这是《贝叶斯统计》板书的电子转录版。入口为 `main.tex`，编译结果为 `main.pdf`。
按绪论、第一章小节、第二章小节保存；与 `bayes_notes/` 的课程笔记分别维护。

正文转录照片中可识别的文字、公式、表格和推导；合并同一段板书的重叠照片。
仅调整排版、换行和小节归属，保留板书例号、简写及近似数值。
不从课件补题意或补推导，不把原笔记中的解释加入正文。
板书中的擦除残迹、未成式草写不作推测还原；历史作业与考试安排单列在末尾。

## Files

| File / directory | Contents |
| --- | --- |
| `main.tex` | Full document entry point |
| `intro.tex` | Introduction |
| `chapter1/section1_*.tex` | Chapter 1, one source per section |
| `chapter2/section2_*.tex` | Chapter 2, one source per section |
| `administrative.tex` | Historical classroom announcements |
| `source_index.md` | Section-to-photo index and coverage |
| `source_manifest.csv` | Per-photo identifiers, filenames, SHA-256 hashes and destinations |
| `transcription_checks.md` | Specific source inconsistencies and reading decisions |

本次使用可读取的三批照片：早期 E01–E31、第6周 W01–W21、后续 L01–L60。
这些编号只用于核对，不是授课日期。照片原件不随本目录发布。

1.4“超参数及其确定”尚未定位到独立板书，不从 PDF 补写，章节编号直接接到 1.5。
例 2.2.6 未在本次可读取的三批照片中定位，因此不收入；旧课程笔记的课件补全内容也不移入。
这些范围说明不表示老师未讲，只说明本版的照片依据。

## Build

Use XeLaTeX with `ctex`, `amsmath`, `tikz` and the Windows Chinese font set:

```sh
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

For other operating systems, change the `ctex` font configuration as needed.
