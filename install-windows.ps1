$ErrorActionPreference = "Stop"

$MarketplaceRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

if (-not (Get-Command codex -ErrorAction SilentlyContinue)) {
    throw "Codex 명령을 찾을 수 없습니다. Codex가 설치되어 있고 터미널에서 codex 명령을 사용할 수 있는지 확인하세요."
}

Write-Host "1km 콘텐츠 마켓플레이스를 등록합니다..." -ForegroundColor Cyan
codex plugin marketplace add $MarketplaceRoot

Write-Host "1km 콘텐츠 제작 플러그인을 설치합니다..." -ForegroundColor Cyan
codex plugin add "1km-content-production@1km-content-marketplace"

Write-Host "설치가 완료되었습니다. Codex에서 새 작업을 열어 플러그인을 사용하세요." -ForegroundColor Green
