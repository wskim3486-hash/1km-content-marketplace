$ErrorActionPreference = "Stop"

$MarketplaceName = "1km-content-marketplace"
$MarketplaceSource = "wskim3486-hash/1km-content-marketplace"
$PluginSelector = "1km-content-production@1km-content-marketplace"

if (-not (Get-Command codex -ErrorAction SilentlyContinue)) {
    throw "Codex 명령을 찾을 수 없습니다. Codex를 설치한 뒤 PowerShell을 새로 열어 주세요."
}

$MarketplaceList = (codex plugin marketplace list 2>&1 | Out-String)

if ($MarketplaceList -match [regex]::Escape($MarketplaceName)) {
    Write-Host "등록된 1km 마켓플레이스를 최신 상태로 갱신합니다..." -ForegroundColor Cyan
    codex plugin marketplace upgrade $MarketplaceName
} else {
    Write-Host "1km 콘텐츠 마켓플레이스를 GitHub에서 등록합니다..." -ForegroundColor Cyan
    codex plugin marketplace add $MarketplaceSource --ref main
}

if ($LASTEXITCODE -ne 0) {
    throw "마켓플레이스 등록 또는 갱신에 실패했습니다. 위 오류 메시지를 확인해 주세요."
}

Write-Host "1km 콘텐츠 제작 플러그인을 설치합니다..." -ForegroundColor Cyan
codex plugin add $PluginSelector

if ($LASTEXITCODE -ne 0) {
    throw "플러그인 설치에 실패했습니다. 위 오류 메시지를 확인해 주세요."
}

Write-Host "설치가 완료되었습니다. Codex를 다시 시작하거나 새 작업을 열어 주세요." -ForegroundColor Green
