# Bayesian Statistics

Course notes and worked exercise solutions for Bayesian Statistics, including LaTeX sources and compiled PDFs. The learning materials are written in Chinese.

## Contents

| Directory | Contents |
| --- | --- |
| `bayes_notes/` | Course notes, with `main.tex` as the entry point and separate introduction, Chapter 1, and Chapter 2 sources. Includes a compiled PDF, usage instructions, and a board reference index. |
| `board_transcription/` | A separate electronic transcription of the instructor's blackboard, organized by section, with LaTeX sources, a compiled PDF, and a photo source index. |
| `exam_reference/` | An A4 reference for hand-copying Chapter 1 and Chapter 2 exam formulas, including the joint normal model, with LaTeX source and a compiled PDF. |
| `exercise_solutions/` | Selected Chapter 1 exercise solutions in LaTeX and PDF formats. |
| `exercise_solutions_chapter2/` | Solutions to Chapter 2 exercises 2.1–2.10 in LaTeX and PDF formats. |

The ZIP archive at the repository root preserves the notes snapshot created on October 27, 2026.

## Build

Install a TeX distribution with XeLaTeX, `ctex`, and the required Chinese fonts. From the directory of the document you want to build, run:

```sh
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

Alternatively, compile `main.tex` with XeLaTeX in your editor. Compile twice when needed to update the table of contents. Keep the chapter source files alongside the main document.

Compiled PDFs are included in version control. LaTeX build artifacts are excluded by `.gitignore`.

## Editorial approach

The notes prioritize the instructor's board work, using lecture slides as supporting material. Exercise solutions follow the classroom sequence: likelihood, prior density, posterior distribution, and the requested result.

The blackboard transcription preserves photographed board content and is maintained separately from the notes. It merges overlapping photographs without adding slide material or explanatory derivations. Source discrepancies and reading decisions are recorded separately.

Original lecture slides and board photographs are stored separately. Some image links in the board reference index refer to local files and will not resolve on GitHub.
