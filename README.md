# 1km 콘텐츠 제작 플러그인

선정 기사 한 건을 중심으로 아이템 발굴부터 딥리서치, 두 번의 팩트체크, 7~9분 구성안, 촬영 대본, 최종검수까지 진행하는 **GPT/Codex 전용 제작 플러그인**입니다.

이 저장소는 Windows 사용자가 GitHub 주소만으로 설치할 수 있도록 구성되어 있습니다. Claude Code와 Gemini CLI용 파일은 포함하지 않습니다.

## 무엇을 해주나요?

- 비정치 뉴스·생활 아이템 후보 10개 발굴
- 후보 비교와 최종 아이템 선정
- 선정 기사 중심 딥리서치
- 대본 작성 전 1차 팩트체크
- 7~9분 이야기형 구성안
- 실제 말하듯 자연스러운 촬영 대본
- 대본 완성 후 2차 팩트체크
- 화면·법적 위험·낭독감을 포함한 최종검수
- 의욕만 넘치는 신입 AI 캐릭터를 활용한 쉬어가기 대화

핵심 흐름은 다음과 같습니다.

> 강한 사건 → 시청자의 첫 판단 → 판단을 흔드는 균열 → 실제 조건과 구조 → 비교·반례 → 처음 사건으로 복귀

## 사용 환경

- Windows 10 또는 Windows 11
- [Windows용 Codex](https://learn.chatgpt.com/docs/windows/windows-app)가 설치되어 있고 PowerShell에서 `codex` 명령을 사용할 수 있어야 합니다.
- GitHub 저장소가 공개되어 있으므로 별도의 GitHub 로그인은 필요하지 않습니다.
- 별도의 MCP 서버나 외부 API 키는 필요하지 않습니다.

## 가장 쉬운 설치 방법

Windows에서 PowerShell을 열고 다음 명령을 한 줄씩 실행하세요.

```powershell
codex plugin marketplace add wskim3486-hash/1km-content-marketplace --ref main
codex plugin add 1km-content-production@1km-content-marketplace
```

설치가 끝나면 Codex를 다시 시작하거나 새 작업을 여세요. 기존 대화에서는 새로 설치한 스킬이 바로 나타나지 않을 수 있습니다.

설치 여부는 다음 명령으로 확인할 수 있습니다.

```powershell
codex plugin marketplace list
codex plugin list
```

## 설치 스크립트 사용

저장소를 ZIP으로 내려받았거나 복제했다면 저장소 폴더에서 다음 명령을 실행해도 됩니다.

```powershell
powershell -ExecutionPolicy Bypass -File .\install-windows.ps1
```

이 스크립트도 로컬 폴더를 등록하지 않고 이 GitHub 저장소의 `main` 브랜치를 등록합니다.

## 바로 사용하기

기사가 정해져 있다면 새 Codex 작업에서 다음처럼 요청하세요.

```text
이 기사로 1km 전체 제작 프로세스를 진행해줘.
기사: 여기에 기사 주소를 붙여넣기
```

아직 주제가 없다면 다음처럼 시작할 수 있습니다.

```text
오늘 1km 콘텐츠로 만들 만한 비정치 아이템 10개를 찾아줘.
```

일부 단계까지만 요청해도 됩니다.

```text
이 후보들을 비교해서 지금 제작할 아이템 하나를 추천해줘.
```

```text
이 기사로 딥리서치와 대본 전 1차 팩트체크까지만 진행해줘.
```

```text
이 구성안으로 7~9분 촬영 대본을 써줘.
```

```text
이 대본을 2차 팩트체크하고 최종검수해줘.
```

## 전체 제작 순서

전체 제작을 요청하면 아래 순서를 유지합니다.

1. 아이템 발굴
2. 아이템 선정
3. 선정 기사 중심 딥리서치
4. 대본 전 1차 팩트체크
5. 7~9분 이야기형 구성안
6. 촬영 대본
7. 대본 완성 후 2차 팩트체크
8. 최종검수와 촬영 인계

두 번의 팩트체크는 생략하거나 순서를 바꾸지 않습니다.

## 결과물 구성

전체 제작 결과는 촬영 판단이 가능하도록 0~9 패키지로 정리됩니다.

0. 제작 상태와 판정
1. 선정 기사와 한 줄 기획
2. 딥리서치 취재노트
3. 1차 팩트체크
4. 이야기형 구성안
5. 촬영 대본
6. AI 쉬어가기 대화
7. 2차 팩트체크
8. 최종검수
9. 촬영·편집 인계

## 업데이트

PowerShell에서 다음 명령을 실행하세요.

```powershell
codex plugin marketplace upgrade 1km-content-marketplace
codex plugin add 1km-content-production@1km-content-marketplace
```

또는 저장소 폴더에서 업데이트 스크립트를 실행할 수 있습니다.

```powershell
powershell -ExecutionPolicy Bypass -File .\update-windows.ps1
```

업데이트 후에는 Codex를 다시 시작하거나 새 작업을 여세요.

## 삭제

```powershell
codex plugin remove 1km-content-production@1km-content-marketplace
codex plugin marketplace remove 1km-content-marketplace
```

## 문제가 생겼을 때

### `codex` 명령을 찾을 수 없다고 나오는 경우

Codex가 설치되어 있는지 확인하고 PowerShell을 새로 연 뒤 다시 실행하세요.

### 플러그인이 보이지 않는 경우

1. `codex plugin marketplace list`에서 `1km-content-marketplace`가 보이는지 확인합니다.
2. `codex plugin list`에서 `1km-content-production`이 보이는지 확인합니다.
3. 업데이트 명령을 다시 실행합니다.
4. Codex를 완전히 종료한 뒤 다시 열고 새 작업을 시작합니다.

### 마켓플레이스가 이미 등록되어 있다고 나오는 경우

새로 등록하지 말고 업데이트와 설치만 실행하세요.

```powershell
codex plugin marketplace upgrade 1km-content-marketplace
codex plugin add 1km-content-production@1km-content-marketplace
```

## 저장소 구조

```text
1km-content-marketplace/
├── .agents/plugins/marketplace.json
├── plugins/1km-content-production/
│   ├── .codex-plugin/plugin.json
│   ├── references/
│   └── skills/
├── install-windows.ps1
├── update-windows.ps1
└── README.md
```

실제 플러그인 파일은 `plugins/1km-content-production` 한 곳에만 있습니다. 저장소 루트에 같은 스킬을 중복 보관하지 않습니다.

## 현재 배포 기준

- 플러그인: `1km-content-production`
- 매니페스트 버전: `1.2.0+codex.20260918041714`
- 기준일: 2026-08-25
- 대상: GPT/Codex, Windows

플러그인의 제작 기준은 `plugins/1km-content-production/references/approved-narrative-standard.md`와 각 스킬의 `SKILL.md`에 들어 있습니다.
