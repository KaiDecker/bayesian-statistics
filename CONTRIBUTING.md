# Contributing

[简体中文](CONTRIBUTING.zh-CN.md)

Corrections to formulas, derivations, typography, and documentation are welcome. For an issue, include the document path, section or exercise number, the current expression, and a proposed correction with its reasoning.

## Editing guidelines

- Keep the English and Chinese README versions in sync, including language-switch links.
- Keep the Chinese learning materials and classroom notation consistent with the surrounding text.
- Treat `board_transcription/` as a faithful transcription. Record source discrepancies in `transcription_checks.md` instead of silently correcting them in the transcription.
- Edit the `.tex` sources and rebuild the affected PDF. Do not commit temporary LaTeX files or original textbook, lecture-slide, or photo files.
- Visually inspect changed PDF pages for missing glyphs, clipped formulas, and overflow. A successful build alone does not verify mathematical correctness.

Build the affected document using the command in its README. Check the resulting `main.log` for warnings and run `git diff --check` before submitting a pull request.

Use English Conventional Commit messages, such as `docs: update bilingual navigation` or `fix: correct a posterior variance formula`.
