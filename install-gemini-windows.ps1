$ErrorActionPreference = "Stop"

if (-not (Get-Command gemini -ErrorAction SilentlyContinue)) {
    throw "Gemini CLI 명령을 찾을 수 없습니다. Gemini CLI를 먼저 설치하세요."
}

Write-Host "1km 콘텐츠 제작 Gemini 확장을 설치합니다..." -ForegroundColor Cyan
gemini extensions install "https://github.com/wskim3486-hash/1km-content-marketplace.git" --auto-update

Write-Host "설치가 완료되었습니다. Gemini CLI를 다시 시작하세요." -ForegroundColor Green
