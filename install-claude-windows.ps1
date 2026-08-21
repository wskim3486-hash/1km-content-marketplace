$ErrorActionPreference = "Stop"

if (-not (Get-Command claude -ErrorAction SilentlyContinue)) {
    throw "Claude Code 명령을 찾을 수 없습니다. Claude Code를 먼저 설치하세요."
}

Write-Host "Claude Code가 열리면 아래 명령을 차례대로 입력하세요." -ForegroundColor Cyan
Write-Host "/plugin marketplace add wskim3486-hash/1km-content-marketplace" -ForegroundColor Yellow
Write-Host "/plugin install 1km-content-production@1km-content-marketplace" -ForegroundColor Yellow
Write-Host "설치 후 Claude Code를 다시 시작하세요." -ForegroundColor Green

claude
