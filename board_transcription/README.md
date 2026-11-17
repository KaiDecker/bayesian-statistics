# Blackboard Transcription

[简体中文](README.zh-CN.md)

This directory is a typeset transcription of the available classroom blackboard material. It is maintained separately from the explanatory course notes.

The transcription preserves the board's notation, example numbers, shorthand, and approximate values. It combines overlapping photographs and adjusts layout and section placement only. It does not silently correct mathematical errors or fill gaps from lecture slides. Known reading decisions and inconsistencies are documented in `transcription_checks.md`.

## Files

| Path | Contents |
| --- | --- |
| `main.tex` | Document entry point |
| `intro.tex` | Introduction transcription |
| `chapter1/section1_*.tex` | Chapter 1, one source per available section |
| `chapter2/section2_*.tex` | Chapter 2, one source per available section |
| `administrative.tex` | Historical classroom announcements |
| `source_index.md` | Section and photo index |
| `source_manifest.csv` | Photo identifiers, original filenames, hashes, and destinations |
| `transcription_checks.md` | Ambiguities and source inconsistencies |

The photo index covers three batches (E01–E31, W01–W21, and L01–L60). Original photographs are not included, so filenames in the index are local cross-check references only. Section 1.4 and Example 2.2.6 are not transcribed in this edition because they were not located in the available photo batches.

## Build

From this directory, run:

```sh
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

Use XeLaTeX with `ctex`, `amsmath`, `tikz`, and the required Chinese fonts. Font configuration may need adjustment outside Windows.
