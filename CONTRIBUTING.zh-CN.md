# 参与整理

[English](CONTRIBUTING.md)

欢迎修正公式、推导、排版和说明文档。提交问题时，请写明文件路径、小节或习题编号、当前表达式，以及建议改法和理由。

## 修改约定

- 英文和中文 README 同步维护，并保留语言切换链接。
- 学习资料正文保留中文，数学记号与上下文和课堂习惯一致。
- `board_transcription/` 用于忠实转录；来源存在差异时，记录到 `transcription_checks.md`，不要在转录正文中静默改正。
- 修改 `.tex` 后重新编译相应 PDF，不提交 LaTeX 中间文件，也不上传教材、课件或照片原件。
- 检查修改页是否缺字、公式截断或溢出。编译成功本身不代表数学推导已验证。

运行 `./build.ps1` 编译全部文档，或用 `./build.ps1 -Target homework_chapter1` 编译一个目录。提交拉取请求前，检查生成的 `main.log` 警告，并执行 `git diff --check`。

提交信息采用全英文 Conventional Commits，例如 `docs: update bilingual navigation` 或 `fix: correct a posterior variance formula`。
