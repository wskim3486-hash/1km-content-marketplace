# 1km 콘텐츠 제작 플러그인

뉴스 아이템 발굴부터 딥리서치, 팩트체크, 7~9분 촬영 대본과 최종검수까지 도와주는 **GPT/Codex 전용 플러그인**입니다.

코딩을 몰라도 됩니다. Windows용 ChatGPT 앱에서 아래 순서대로 따라 하세요.

## 처음 설치하기

### 1. Windows용 ChatGPT 앱을 엽니다

[Windows용 ChatGPT 앱 안내](https://learn.chatgpt.com/docs/windows/windows-app)를 참고해 앱을 설치하고 로그인하세요.

앱에서 **Codex**를 선택한 다음 **새 작업**을 엽니다. 일반 채팅이 아니라 Codex 작업에서 진행해야 합니다.

### 2. 아래 문장을 그대로 복사합니다

```text
아래 공개 GitHub 저장소를 Codex 플러그인 마켓플레이스로 등록하고,
그 안의 1km-content-production 플러그인을 설치해줘.

main 브랜치를 사용하고, 이미 등록되어 있다면 최신 상태로 업데이트해줘.
다른 플러그인은 변경하지 말아줘.

설치가 끝나면 정상 설치 여부와 설치된 버전도 확인해줘.

https://github.com/wskim3486-hash/1km-content-marketplace
```

### 3. Codex에 붙여넣고 실행합니다

명령 실행이나 인터넷 사용을 허용할지 물으면 내용을 확인한 뒤 **허용**하세요.

Codex가 설치 완료와 버전을 알려줄 때까지 기다리면 됩니다.

정상 설치 버전은 다음과 같습니다.

```text
1.2.0+codex.20260918041714
```

### 4. 반드시 새 작업을 엽니다

설치가 끝나면 현재 작업을 닫고 **새 Codex 작업**을 여세요. 새 작업부터 1km 플러그인이 적용됩니다.

### 5. 설치를 확인합니다

새 작업에서 아래 문장을 입력하세요.

```text
1km 플러그인을 사용해서 오늘 콘텐츠로 만들 만한 비정치 아이템 10개를 찾아줘.
```

아이템 후보가 나오면 설치가 완료된 것입니다.

## 기사로 바로 시작하기

만들고 싶은 기사가 있다면 새 Codex 작업에서 이렇게 요청하세요.

```text
1km 플러그인을 사용해서 아래 기사로 전체 제작 프로세스를 진행해줘.

기사 주소:
여기에 기사 주소 붙여넣기
```

전체 제작은 다음 순서로 진행됩니다.

1. 아이템 발굴·선정
2. 선정 기사 중심 딥리서치
3. 대본 전 1차 팩트체크
4. 7~9분 이야기형 구성안
5. 실제 말하듯 쓴 촬영 대본
6. 대본 완성 후 2차 팩트체크
7. 최종검수와 촬영 인계

## 기존 버전 업데이트하기

이미 1km 플러그인이 설치되어 있다면 Codex 새 작업에서 아래 문장을 입력하세요.

```text
현재 설치된 1km-content-production 플러그인을 확인하고,
아래 GitHub 저장소의 main 브랜치 기준 최신 버전으로 업데이트해줘.

다른 플러그인은 변경하지 말고, 업데이트 후 설치된 버전을 확인해줘.

https://github.com/wskim3486-hash/1km-content-marketplace
```

완료 후에는 다시 새 Codex 작업을 여세요.

## 자연어 설치가 안 될 때

Windows에서 **PowerShell**을 열고 아래 두 줄을 한 줄씩 실행하세요.

```powershell
codex plugin marketplace add wskim3486-hash/1km-content-marketplace --ref main
codex plugin add 1km-content-production@1km-content-marketplace
```

마켓플레이스가 이미 등록되어 있다는 메시지가 나오면 아래 두 줄을 실행하세요.

```powershell
codex plugin marketplace upgrade 1km-content-marketplace
codex plugin add 1km-content-production@1km-content-marketplace
```

실행이 끝나면 ChatGPT 앱을 다시 시작하고 새 Codex 작업을 여세요.

## 문제가 생겼을 때

### `codex` 명령을 찾을 수 없어요

Windows용 ChatGPT 앱과 Codex가 설치되어 있는지 확인하세요. 앱을 업데이트한 뒤 PowerShell과 ChatGPT 앱을 다시 열어 보세요.

### 설치됐는데 1km가 작동하지 않아요

설치했던 작업을 계속 사용하지 말고 새 Codex 작업을 여세요. 그래도 안 되면 ChatGPT 앱을 완전히 종료했다가 다시 실행하세요.

### 기존 버전과 충돌하는 것 같아요

Codex에 다음과 같이 요청하세요.

```text
기존 1km 플러그인과 마켓플레이스 상태를 확인해줘.
1km 관련 기존 설치만 안전하게 제거한 뒤 아래 저장소의 main 브랜치로 다시 설치해줘.
다른 플러그인은 변경하지 말아줘.

https://github.com/wskim3486-hash/1km-content-marketplace
```

## 알아두기

- Windows용 GPT/Codex 전용입니다.
- Claude Code와 Gemini CLI용 플러그인이 아닙니다.
- 별도의 MCP 서버나 외부 API 키는 필요하지 않습니다.
- 사실 오류를 막기 위해 대본 작성 전과 후에 팩트체크를 두 번 진행합니다.
- 최종 결과는 실제 촬영 전에 사람이 한 번 더 확인하는 것을 권장합니다.
