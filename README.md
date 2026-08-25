# 1km 콘텐츠 제작

기사 하나를 골라 **딥리서치 → 1차 팩트체크 → 7~9분 구성안 → 촬영 대본 → 2차 팩트체크 → 최종검수**까지 이어서 만드는 제작 프로세스입니다.

Windows에서 GPT/Codex, Claude Code, Gemini CLI로 사용할 수 있습니다.

> 이 스킬과 Markdown 구성은 GPT/Codex의 Skills 방식에 맞춰 만든 것이므로 **GPT/Codex에서 사용하는 것이 가장 정확하고 안정적입니다.** Claude Code와 Gemini CLI에서도 같은 핵심 프로세스를 사용할 수 있지만, 스킬을 불러오고 적용하는 방식의 차이로 결과가 조금 달라질 수 있습니다.

## 가장 추천하는 방법: GPT/Codex

### 처음 한 번만 설치하기

1. Windows에서 **PowerShell**을 엽니다.
ㄱ.키보드의 Windows 키를 누릅니다.
ㄴ.PowerShell을 입력합니다.
ㄷ.검색 결과에서 Windows PowerShell을 클릭합니다.
2. 아래 두 줄을 한 줄씩 복사해 실행합니다.

```powershell
codex plugin marketplace add wskim3486-hash/1km-content-marketplace
codex plugin add 1km-content-production@1km-content-marketplace
```

3. Codex에서 새 작업을 엽니다.
4. `1km 콘텐츠 제작` 플러그인이 보이면 설치가 끝난 것입니다.

명령을 찾을 수 없다는 메시지가 나오면 Codex를 먼저 설치한 뒤 다시 실행하세요.

### 바로 사용하기

새 작업에서 기사 주소와 함께 이렇게 요청하면 됩니다.

```text
이 기사로 1km 전체 제작 프로세스를 진행해줘.
기사: 여기에 기사 주소 붙여넣기
```

아직 기사를 고르지 않았다면 이렇게 요청하세요.

```text
오늘 1km 콘텐츠로 만들 만한 비정치 아이템 10개를 찾아줘.
```

전체 제작을 요청하면 다음 순서를 지킵니다.

1. 아이템 발굴·선정
2. 선정 기사 중심 딥리서치
3. 대본 전 1차 팩트체크
4. 7~9분 이야기형 구성안
5. 실제 말하듯 쓴 촬영 대본
6. 대본 완성 후 2차 팩트체크
7. 최종검수와 촬영 인계

## Claude Code에서 사용하기

Claude Code를 열고 아래 명령을 차례대로 입력합니다.

```text
/plugin marketplace add wskim3486-hash/1km-content-marketplace
/plugin install 1km-content-production@1km-content-marketplace
```

Claude Code를 다시 시작한 뒤 위의 사용 예시와 똑같이 요청하면 됩니다.

## Gemini CLI에서 사용하기

PowerShell에서 아래 한 줄을 실행합니다.

```powershell
gemini extensions install "https://github.com/wskim3486-hash/1km-content-marketplace.git" --auto-update
```

Gemini CLI를 다시 시작한 뒤 위의 사용 예시와 똑같이 요청하면 됩니다.

## 업데이트하기

GPT/Codex는 PowerShell에서 아래 두 줄을 실행합니다.

```powershell
codex plugin marketplace upgrade 1km-content-marketplace
codex plugin add 1km-content-production@1km-content-marketplace
```

Claude Code는 플러그인 관리 화면에서 업데이트합니다. Gemini CLI는 위 설치 명령의 `--auto-update` 옵션으로 자동 업데이트됩니다.

업데이트 후에는 사용 중인 작업을 닫고 새 작업을 열어 주세요.

## 이 프로세스에서 지키는 핵심

- 선정 기사가 이야기의 중심입니다.
- 기사에서 출발한 질문만 딥리서치로 확장하고 다시 기사로 돌아옵니다.
- 대본을 쓰기 전과 쓴 후, 팩트체크를 두 번 진행합니다.
- 보고서 말투가 아니라 실제 사람이 들려주는 듯한 구어체로 씁니다.
- AI 쉬어가기 캐릭터는 `의욕만 넘치는 신입 AI`입니다.
- 최종 결과는 촬영 판단까지 가능한 0~9 제작 패키지로 정리합니다.

## 버전

- 1.4.0
