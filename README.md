# 1km 콘텐츠 제작 플러그인

뉴스 아이템 발굴부터 딥리서치, 팩트체크, 구성안, 촬영 대본과 최종 검수까지 이어지는 1km 유튜브 콘텐츠 제작 플러그인입니다. Codex, Claude Code, Gemini CLI를 지원합니다.

## 지원 환경

- Windows 10·11
- Git for Windows
- Codex, Claude Code, Gemini CLI 중 사용할 플랫폼

## Codex용 Windows 설치

PowerShell에서 다음 명령을 실행합니다.

```powershell
git clone https://github.com/wskim3486-hash/1km-content-marketplace.git
Set-Location .\1km-content-marketplace
Set-ExecutionPolicy -Scope Process Bypass
.\install-windows.ps1
```

설치가 끝나면 Codex에서 새 작업을 열고 `1km 콘텐츠 제작` 플러그인을 선택합니다.

## Claude Code용 Windows 설치

```powershell
git clone https://github.com/wskim3486-hash/1km-content-marketplace.git
Set-Location .\1km-content-marketplace
Set-ExecutionPolicy -Scope Process Bypass
.\install-claude-windows.ps1
```

Claude Code가 열리면 화면에 표시된 `/plugin marketplace add`와 `/plugin install` 명령을 차례대로 입력합니다.

## Gemini CLI용 Windows 설치

```powershell
git clone https://github.com/wskim3486-hash/1km-content-marketplace.git
Set-Location .\1km-content-marketplace
Set-ExecutionPolicy -Scope Process Bypass
.\install-gemini-windows.ps1
```

또는 PowerShell에서 다음 명령 하나만 실행할 수 있습니다.

```powershell
gemini extensions install "https://github.com/wskim3486-hash/1km-content-marketplace.git" --auto-update
```

## 업데이트

저장소 폴더에서 다음 명령을 실행합니다.

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\update-windows.ps1
```

Codex는 위 스크립트로 업데이트합니다. Claude Code는 플러그인 관리 화면에서 업데이트하고, Gemini CLI는 `--auto-update` 설치 시 자동 업데이트됩니다. 업데이트 후에는 사용하는 CLI나 Codex 작업을 새로 시작합니다.

## 포함된 제작 단계

1. 최신 비정치 뉴스 아이템 발굴
2. 후보 비교 및 최종 아이템 선정
3. 현상·배경·역사·주변 이야기 딥리서치
4. 대본 작성 전 1차 팩트체크
5. 7~9분 영상 구성안 작성
6. 촬영용 대본과 최종 낭독본 작성
7. 대본 완성 후 2차 팩트체크
8. 촬영 가능 여부 최종 검수

## AI 쉬어가기 캐릭터

AI는 `의욕만 넘치는 신입 AI`로 설정됩니다. 기자의 질문 전체보다 익숙한 단어 하나에 꽂혀 엉뚱한 보고를 시작하고, 정정받은 뒤에도 인접한 방향으로 한 번 더 빗나갑니다. AI는 분석과 결론을 대신하지 않으며, 기자와 2~4번의 짧은 티키타카만 진행합니다.

## 시작 요청 예시

- 오늘 1km 콘텐츠용 비정치 아이템 10개를 찾아줘.
- 선택한 아이템으로 1차 팩트체크까지 진행해줘.
- 이 주제로 최종 대본과 검수까지 전체 제작해줘.

## 저장소 구조

```text
.agents/plugins/marketplace.json
.claude-plugin/marketplace.json
gemini-extension.json
GEMINI.md
plugins/1km-content-production/.codex-plugin/plugin.json
plugins/1km-content-production/.claude-plugin/plugin.json
plugins/1km-content-production/skills/
skills/
install-windows.ps1
install-claude-windows.ps1
install-gemini-windows.ps1
update-windows.ps1
```

## 버전

- 1.3.0
