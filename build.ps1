[CmdletBinding()]
param(
    [ValidateSet('all', 'bayes_notes', 'board_transcription', 'homework_chapter1', 'homework_chapter2', 'exam_reference')]
    [string]$Target = 'all',
    [switch]$Rebuild
)

$ErrorActionPreference = 'Stop'
if (-not (Get-Command latexmk -ErrorAction SilentlyContinue)) {
    throw 'latexmk was not found. Install TeX Live or MiKTeX with XeLaTeX, latexmk, and Chinese language support.'
}

$documents = @('bayes_notes', 'board_transcription', 'homework_chapter1', 'homework_chapter2', 'exam_reference')
if ($Target -ne 'all') {
    $documents = @($Target)
}

$buildArguments = @('-xelatex', '-interaction=nonstopmode', '-halt-on-error')
if ($Rebuild) {
    $buildArguments += '-g'
}

foreach ($document in $documents) {
    Write-Host "Building $document..."
    Push-Location (Join-Path $PSScriptRoot $document)
    try {
        & latexmk @buildArguments main.tex
        if ($LASTEXITCODE -ne 0) {
            throw "The LaTeX build failed for $document (exit code $LASTEXITCODE)."
        }
    }
    finally {
        Pop-Location
    }
}

Write-Host 'All requested documents built successfully.'
