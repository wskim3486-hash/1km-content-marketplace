$ErrorActionPreference = "Stop"

$RepositoryRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $RepositoryRoot

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw "Git 명령을 찾을 수 없습니다. Git for Windows를 먼저 설치하세요."
}

if (-not (Get-Command codex -ErrorAction SilentlyContinue)) {
    throw "Codex 명령을 찾을 수 없습니다. Codex가 설치되어 있고 터미널에서 codex 명령을 사용할 수 있는지 확인하세요."
}

Write-Host "최신 플러그인 파일을 내려받습니다..." -ForegroundColor Cyan
git pull --ff-only

Write-Host "1km 콘텐츠 제작 플러그인을 다시 설치합니다..." -ForegroundColor Cyan
codex plugin add "1km-content-production@1km-content-marketplace"

Write-Host "업데이트가 완료되었습니다. Codex에서 새 작업을 열어 변경사항을 확인하세요." -ForegroundColor Green
