# Vladyslav Lebediev — Resume

DevOps / Monitoring Engineer. This repository keeps my resume in Markdown, with a
GitHub Actions pipeline that builds a PDF from it on every change.

[![Build PDF](https://github.com/yatvoiboks2/resume/actions/workflows/build.yml/badge.svg)](https://github.com/yatvoiboks2/resume/actions/workflows/build.yml)

## Get the resume

- **Read it:** [resume.md](resume.md)
- **Download PDF:** [latest release](https://github.com/yatvoiboks2/resume/releases/latest)

## How it works

`resume.md` is the single source of truth. On every push to `main`, the
[build workflow](.github/workflows/build.yml):

1. Renders `resume.md` to HTML with Pandoc using `templates/resume.html`.
2. Converts that HTML to PDF with WeasyPrint, styled by `resume.css`.
3. Uploads the PDF as a build artifact and publishes it to the `latest` release.

## Build locally

Requires `pandoc`, `weasyprint`, and `make`.

```sh
make pdf      # → build/Vladyslav_Lebediev_Resume.pdf
make clean
```
