# Bayesian Statistics

[简体中文](README.zh-CN.md)

Student-prepared course notes, blackboard transcriptions, worked exercises, and a compact exam reference for a Bayesian Statistics course. The materials are written in Chinese and typeset with LaTeX.

This is an independent study resource, not an official university or instructor publication. Lecture slides, textbook files, and original classroom photographs are not included. The blackboard transcription directory contains a source index and photo manifest for local cross-checking; those references do not make the photographs available in this repository.

## Contents

| Directory | Description | PDF |
| --- | --- | --- |
| [`bayes_notes/`](bayes_notes/) | Course notes: introduction, Chapter 1, and Chapter 2 through Section 2.6. | [Read](bayes_notes/main.pdf) |
| [`board_transcription/`](board_transcription/) | Electronic blackboard transcription, organized by section. | [Read](board_transcription/main.pdf) |
| [`homework_chapter1/`](homework_chapter1/) | Selected Chapter 1 exercise solutions. | [Read](homework_chapter1/main.pdf) |
| [`homework_chapter2/`](homework_chapter2/) | Chapter 2 exercises 2.1–2.10. | [Read](homework_chapter2/main.pdf) |
| [`exam_reference/`](exam_reference/) | Three-page A4 reference for Chapters 1 and 2, including the joint normal model. | [Read](exam_reference/main.pdf) |

Each directory contains its own `main.tex`, compiled `main.pdf`, and bilingual README. The notes and transcriptions prioritize the instructor's blackboard conventions; the worked solutions show the likelihood, prior, posterior kernel, and requested result in sequence. The transcription preserves board notation and records known ambiguities separately.

## Build

Install a TeX distribution with XeLaTeX, `latexmk`, `ctex`, and the required Chinese fonts. Build a document from its own directory:

```powershell
Set-Location bayes_notes
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
```

Use the same command from the other document directories. Build outputs such as `.aux`, `.log`, and `.xdv` are ignored by Git; compiled PDFs are kept in version control.

The sources were built with TeX Live 2025 on Windows. The exam reference explicitly selects `fontset=windows`; on other systems, select an available Chinese font set (such as `fandol`) and check the resulting layout.

## Scope and sources

The notes and transcriptions are based on student-provided class materials. Some exercise solutions and reference-sheet formulas use the textbook or lecture slides for derivations and cross-checks. See each directory's README for its precise scope. Source photographs and course PDFs remain with their owner and are not redistributed here.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for correction reports, transcription conventions, and build checks. Commit messages use English [Conventional Commits](https://www.conventionalcommits.org/).

## Licensing

Original contributions by the repository author are licensed under [Creative Commons Attribution 4.0 International (CC BY 4.0)](LICENSE). You may share and adapt that material, including commercially, provided you give appropriate credit, link to the license, and indicate changes. For attribution, credit KaiDecker and link to [this repository](https://github.com/KaiDecker/bayesian-statistics).

Third-party textbook, lecture, and blackboard content is excluded from this license and remains subject to its original rights. The license covers only contributions the repository author has authority to license.
