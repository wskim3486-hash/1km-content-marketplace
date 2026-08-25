# 1km 콘텐츠 제작 플러그인

뉴스와 이슈에서 아이템을 찾고,

**아이템 발굴 → 선정 → 딥리서치 → 팩트체크 → 구성안 → 촬영 대본 → 다시 팩트체크 → 최종검수**

까지 이어서 진행하는 **1km 유튜브 콘텐츠 제작용 AI 플러그인**입니다.

코딩을 몰라도 사용할 수 있습니다.

---

# 처음 오셨다면 이것부터 읽어주세요

이 저장소를 직접 다운로드하거나 파일을 하나씩 복사할 필요가 없습니다.

사용하는 AI에 따라 아래 **3가지 중 하나만 선택**하면 됩니다.

### ChatGPT를 사용한다

→ **Codex 설치 방법**을 따라 하세요.

### Claude를 사용한다

→ **Claude Code 설치 방법**을 따라 하세요.

### Gemini를 사용한다

→ **Gemini CLI 설치 방법**을 따라 하세요.

**세 가지를 모두 설치할 필요는 없습니다.**

평소 사용하는 AI 하나만 설치하면 됩니다.

---

# 가장 추천하는 방법

처음 사용하는 분이라면

**ChatGPT → Codex**

환경을 가장 추천합니다.

설치가 가장 단순합니다.

---

# ① ChatGPT / Codex에서 설치하기

## STEP 1. ChatGPT 준비

컴퓨터에서 ChatGPT를 실행합니다.

ChatGPT 데스크톱 앱을 사용하고 있다면 앱을 실행하고 로그인합니다.

Codex를 사용할 수 있는 환경이라면 왼쪽 메뉴 등에서 **Codex**를 선택합니다.

---

# STEP 2. Codex 새 작업 열기

Codex를 실행한 뒤 **새 작업**을 하나 엽니다.

처음 사용할 경우 작업할 폴더를 선택하라고 할 수 있습니다.

특별한 작업 폴더가 없다면 예를 들어

```text
문서\1km
```

같은 빈 폴더를 하나 만들어 선택해도 됩니다.

이 폴더에는 특별한 파일이 없어도 됩니다.

---

# STEP 3. 아래 문장을 Codex에 그대로 입력

아래 내용을 전부 복사합니다.

```text
아래 GitHub 저장소를 Codex 플러그인 마켓플레이스로 등록하고,
그 안의 1km-content-production 플러그인을 설치해줘.

설치가 끝나면 정상적으로 설치되었는지 확인하고
현재 설치된 버전도 알려줘.

https://github.com/wskim3486-hash/1km-content-marketplace.git
```

Codex 대화창에 붙여넣고 실행합니다.

설치 과정에서 명령 실행이나 파일 접근 등의 허용을 요청하면 내용을 확인하고 허용합니다.

---

# STEP 4. 설치 완료

설치가 끝났다고 나오면 현재 작업을 닫고 **새 작업**을 하나 엽니다.

새 작업에서 이렇게 물어볼 수 있습니다.

```text
1km-content-production 플러그인이 정상적으로 설치되어 있는지 확인해줘.
```

정상적으로 설치되어 있으면 끝입니다.

---

# Codex 설치가 안 될 때

이 경우에만 Windows 터미널을 사용합니다.

Windows 키를 누르고

```text
터미널
```

을 검색합니다.

**Windows Terminal**을 실행합니다.

관리자 권한은 필요하지 않습니다.

먼저 아래 명령을 입력합니다.

```powershell
codex --version
```

버전 번호가 표시되면 Codex CLI가 설치되어 있는 것입니다.

그다음 아래 두 줄을 **한 줄씩 차례대로** 실행합니다.

```powershell
codex plugin marketplace add wskim3486-hash/1km-content-marketplace
```

설치가 끝나면:

```powershell
codex plugin add 1km-content-production@1km-content-marketplace
```

을 실행합니다.

설치 후 Codex를 새로 실행합니다.

---

# Codex 사용 방법

설치는 처음 한 번만 하면 됩니다.

그다음부터는 Codex에서 새 작업을 열고 원하는 작업을 말하면 됩니다.

예를 들어:

```text
오늘 1km 콘텐츠로 만들 만한 비정치 아이템 10개를 찾아줘.
```

또는:

```text
주제는 부동산이야.

1km 전체 제작 프로세스를 진행해줘.
아이템 선택도 맡길게.
```

이미 기사가 있다면:

```text
이 기사로 1km 전체 제작 프로세스를 진행해줘.

기사:
여기에 기사 주소 붙여넣기
```

---

---

# ② Claude Code에서 설치하기

## 먼저 알아두세요

일반적인 Claude 웹 채팅과 **Claude Code**는 조금 다릅니다.

이 플러그인을 제대로 사용하려면 **Claude Code**를 사용합니다.

Claude Code는 Windows에서도 사용할 수 있습니다.

---

# STEP 1. Claude Code를 사용할 수 있는 계정인지 확인

Claude Code는 Claude.ai의 모든 무료 계정에서 제공되는 기능은 아닙니다.

일반적으로 다음과 같은 Claude 계정이 필요합니다.

- Claude Pro
- Claude Max
- Team
- Enterprise
- Anthropic Console

사용 중인 계정에서 Claude Code를 사용할 수 있어야 합니다.

---

# STEP 2. Windows PowerShell 열기

키보드의 **Windows 키**를 누릅니다.

검색창에:

```text
PowerShell
```

이라고 입력합니다.

**Windows PowerShell**을 실행합니다.

관리자 권한으로 실행할 필요는 없습니다.

화면 앞부분이 대략 이렇게 보이면 PowerShell입니다.

```text
PS C:\Users\사용자이름>
```

---

# STEP 3. Claude Code 설치

PowerShell에 아래 한 줄을 그대로 복사해서 붙여넣습니다.

```powershell
irm https://claude.ai/install.ps1 | iex
```

Enter를 누릅니다.

설치가 완료될 때까지 화면의 안내를 따릅니다.

---

# STEP 4. 설치 확인

설치가 끝나면 PowerShell에서 아래 명령을 입력합니다.

```powershell
claude --version
```

정상적으로 설치되어 있다면 Claude Code의 버전 번호가 표시됩니다.

예:

```text
2.x.x (Claude Code)
```

버전 번호가 나오면 설치 성공입니다.

---

# STEP 5. Claude Code 실행

PowerShell에서:

```powershell
claude
```

라고 입력합니다.

Enter를 누릅니다.

Claude Code가 실행됩니다.

처음 실행하는 경우 브라우저가 열리면서 Claude 계정 로그인을 요구할 수 있습니다.

본인이 사용하는 Claude 계정으로 로그인합니다.

---

# STEP 6. 1km 마켓플레이스 등록

이제부터는 **Claude Code가 실행되어 있는 대화창 안에서** 입력합니다.

아래 명령을 그대로 입력합니다.

```text
/plugin marketplace add wskim3486-hash/1km-content-marketplace
```

Enter를 누릅니다.

이 명령은

**“GitHub에 있는 1km 플러그인 저장소를 Claude Code에 등록한다”**

는 뜻입니다.

파일을 직접 다운로드할 필요는 없습니다.

---

# STEP 7. 1km 플러그인 설치

마켓플레이스 등록이 끝나면 Claude Code에서 아래 명령을 입력합니다.

```text
/plugin install 1km-content-production@1km-content-marketplace
```

Enter를 누릅니다.

설치 화면이나 설치 범위를 선택하는 화면이 나타나면 일반적인 개인 사용자는 **User** 범위를 사용하면 됩니다.

설치를 완료합니다.

설치 완료 안내에서

```text
/reload-plugins
```

를 실행하라고 나오면 그대로 실행합니다.

그런 안내가 없다면 Claude Code를 종료했다가 다시 실행해도 됩니다.

---

# STEP 8. 설치 확인

Claude Code에서:

```text
/plugin
```

을 입력하여 설치된 플러그인을 확인할 수 있습니다.

`1km-content-production`이 표시되면 설치가 완료된 것입니다.

---

# Claude Code에서 사용하는 방법

설치가 완료되면 일반 대화처럼 요청하면 됩니다.

예:

```text
오늘 1km 콘텐츠로 만들 만한 비정치 아이템 10개를 찾아줘.
```

또는:

```text
주제는 부동산이야.

1km 전체 제작 프로세스를 진행해줘.
아이템 선택도 맡길게.
```

기사가 있다면:

```text
이 기사로 1km 전체 제작 프로세스를 진행해줘.

기사:
여기에 기사 주소 붙여넣기
```

---

# Claude에서 특정 스킬을 직접 부르고 싶다면

일반적으로는 스킬 이름을 몰라도 됩니다.

그냥 원하는 작업을 말하면 됩니다.

하지만 직접 호출하고 싶다면 1km 플러그인에는 다음 제작 기능들이 들어 있습니다.

- 아이템 발굴
- 아이템 선정
- 딥리서치
- 1차 팩트체크
- 구성안
- 촬영 대본
- 2차 팩트체크
- 최종검수
- 전체 제작

전체 제작을 요청할 때는 그냥:

```text
1km 전체 제작 프로세스를 진행해줘.
```

라고 하는 것이 가장 쉽습니다.

---

# Claude Code 업데이트

위의 PowerShell 설치 방식으로 Claude Code를 설치했다면 일반적으로 Claude Code가 업데이트를 자동으로 관리합니다.

수동으로 바로 업데이트하고 싶다면 PowerShell에서:

```powershell
claude update
```

를 실행할 수 있습니다.

---

# 1km 플러그인 업데이트

1km 플러그인의 새 버전이 GitHub에 올라왔다면 Claude Code에서:

```text
/plugin marketplace update 1km-content-marketplace
```

를 실행합니다.

그다음 플러그인 업데이트가 필요한 경우 플러그인 관리 화면에서 업데이트합니다.

업데이트 후 Claude Code를 다시 시작하는 것을 권장합니다.

---

---

# ③ Gemini CLI에서 설치하기

## 먼저 알아두세요

일반 Gemini 웹사이트의 채팅창과 **Gemini CLI**는 다릅니다.

이 1km 확장을 설치해서 사용하려면 **Gemini CLI**를 사용합니다.

Gemini CLI는 Windows의 터미널에서 실행됩니다.

처음 보면 어려워 보이지만 아래 내용을 순서대로 그대로 따라 하면 됩니다.

---

# STEP 1. Windows 터미널 열기

Windows 키를 누릅니다.

검색창에:

```text
터미널
```

이라고 입력합니다.

**Windows Terminal**을 실행합니다.

PowerShell 탭이 열려도 괜찮습니다.

---

# STEP 2. Node.js가 설치되어 있는지 확인

Gemini CLI는 **Node.js 20 이상**이 필요합니다.

터미널에서:

```powershell
node --version
```

을 입력합니다.

예를 들어:

```text
v20.x.x
```

```text
v22.x.x
```

처럼 **20 이상**의 숫자가 나오면 다음 단계로 넘어갑니다.

---

# node 명령을 찾을 수 없다고 나오면

Node.js가 설치되어 있지 않은 것입니다.

인터넷에서:

```text
Node.js 공식 홈페이지
```

를 검색합니다.

공식 Node.js 사이트에서 **LTS 버전**을 설치합니다.

특별한 이유가 없다면 설치 프로그램의 기본 설정 그대로 진행하면 됩니다.

설치가 끝나면 Windows Terminal을 완전히 닫았다가 다시 실행합니다.

그리고 다시:

```powershell
node --version
```

을 실행합니다.

20 이상의 버전 번호가 나오면 준비 완료입니다.

---

# STEP 3. Git 설치 여부 확인

GitHub에서 Gemini 확장을 설치하려면 **Git**도 필요합니다.

터미널에서:

```powershell
git --version
```

을 입력합니다.

예:

```text
git version 2.x.x
```

처럼 버전이 나오면 설치되어 있습니다.

---

# git 명령을 찾을 수 없다고 나오면

인터넷에서:

```text
Git for Windows 공식
```

을 검색하여 **Git for Windows**를 설치합니다.

처음 사용하는 분은 특별히 설정을 변경하지 말고 기본 설정으로 설치해도 됩니다.

설치가 끝나면 Windows Terminal을 완전히 닫았다가 다시 실행합니다.

그리고:

```powershell
git --version
```

을 다시 입력합니다.

버전 번호가 나오면 정상입니다.

---

# STEP 4. Gemini CLI 설치

Windows Terminal에서 아래 명령을 실행합니다.

```powershell
npm install -g @google/gemini-cli
```

Enter를 누릅니다.

설치가 끝나면:

```powershell
gemini --version
```

을 입력합니다.

Gemini CLI 버전이 표시되면 설치가 완료된 것입니다.

---

# STEP 5. Gemini CLI 처음 실행

터미널에서:

```powershell
gemini
```

를 입력합니다.

처음 실행하면 Google 계정 로그인이나 인증 방법을 선택하는 화면이 나타날 수 있습니다.

본인이 사용할 Google 계정으로 로그인을 진행합니다.

Gemini CLI가 정상적으로 실행되는지 확인합니다.

확인한 다음 Gemini CLI를 종료합니다.

---

# 중요

다음의 **1km 확장 설치 명령은 Gemini와 대화하는 화면 안이 아니라 Windows Terminal에서 실행하는 것이 가장 확실합니다.**

---

# STEP 6. 1km 확장 설치

Windows Terminal에서 아래 한 줄을 그대로 실행합니다.

```powershell
gemini extensions install https://github.com/wskim3486-hash/1km-content-marketplace.git --auto-update
```

Enter를 누릅니다.

설치를 계속할지 묻는 확인 화면이 나오면 저장소 주소를 확인한 뒤 진행합니다.

설치가 완료되면 끝입니다.

---

# STEP 7. 설치 확인

터미널에서:

```powershell
gemini extensions list
```

를 실행합니다.

목록에:

```text
1km-content-production
```

이 보이면 설치가 완료된 것입니다.

---

# STEP 8. Gemini 다시 실행

터미널에서:

```powershell
gemini
```

를 실행합니다.

이미 Gemini가 실행 중이었다면 반드시 한 번 종료한 뒤 다시 실행하는 것을 권장합니다.

Gemini CLI는 확장을 설치하거나 업데이트한 뒤 **새 세션을 시작해야 변경 내용이 제대로 반영됩니다.**

---

# Gemini 안에서도 설치 여부 확인 가능

Gemini CLI가 실행된 상태에서:

```text
/extensions list
```

를 입력하면 활성화된 확장 목록을 확인할 수 있습니다.

`1km-content-production`이 보이면 정상입니다.

---

# Gemini에서 사용하는 방법

설치 후에는 일반적으로 그냥 원하는 작업을 말하면 됩니다.

예:

```text
오늘 1km 콘텐츠로 만들 만한 비정치 아이템 10개를 찾아줘.
```

또는:

```text
주제는 부동산이야.

1km 전체 제작 프로세스를 진행해줘.
아이템 선택도 맡길게.
```

기사가 있다면:

```text
이 기사로 1km 전체 제작 프로세스를 진행해줘.

기사:
여기에 기사 주소 붙여넣기
```

1km 확장 안의 `GEMINI.md`가 전체 제작 과정과 사용할 스킬을 Gemini에게 알려줍니다.

따라서 사용자가 매번 스킬 이름을 외울 필요는 없습니다.

---

# Gemini 1km 확장 업데이트

설치할 때:

```text
--auto-update
```

옵션을 사용했기 때문에 자동 업데이트를 사용할 수 있습니다.

직접 업데이트하고 싶다면 터미널에서:

```powershell
gemini extensions update 1km-content-production
```

을 실행할 수 있습니다.

모든 Gemini 확장을 업데이트하려면:

```powershell
gemini extensions update --all
```

을 사용합니다.

업데이트한 뒤에는 Gemini CLI를 종료하고 다시 실행합니다.

---

# 어떤 것을 설치해야 할지 모르겠어요

아주 간단합니다.

## 평소 ChatGPT를 사용한다

**Codex를 사용하세요.**

가장 추천합니다.

---

## 평소 Claude를 사용한다

**Claude Code를 설치하세요.**

Claude 웹 채팅이 아니라 Claude Code입니다.

---

## 평소 Gemini를 사용한다

**Gemini CLI를 설치하세요.**

Gemini 웹 채팅이 아니라 Gemini CLI입니다.

---

# 세 가지를 다 설치해야 하나요?

**아니요.**

하나만 설치하면 됩니다.

예를 들어 평소 ChatGPT만 사용한다면 Claude Code와 Gemini CLI는 설치하지 않아도 됩니다.

---

# 설치와 사용의 차이

처음 사용하는 분들이 가장 많이 헷갈리는 부분입니다.

### 설치

컴퓨터에 1km 플러그인을 넣는 작업입니다.

**처음 한 번만 하면 됩니다.**

### 사용

설치가 끝난 뒤 콘텐츠를 만드는 작업입니다.

콘텐츠를 만들 때마다 플러그인을 다시 설치하는 것이 아닙니다.

---

# 처음 한 번만

예를 들어 Codex라면:

```text
Codex 실행
↓
1km 플러그인 설치
↓
설치 완료
```

입니다.

그다음부터는:

```text
Codex 실행
↓
새 작업
↓
원하는 작업 말하기
```

만 하면 됩니다.

---

# 가장 간단한 사용 문장

아이템부터 맡기려면:

```text
오늘 1km 콘텐츠로 만들 만한 비정치 아이템 10개를 찾아줘.
```

---

전체 제작까지 모두 맡기려면:

```text
1km 전체 제작 프로세스를 진행해줘.
아이템 선택도 맡길게.
```

---

주제가 정해져 있다면:

```text
주제는 부동산이야.

1km 전체 제작 프로세스를 진행해줘.
아이템 선택도 맡길게.
```

---

기사를 이미 가지고 있다면:

```text
이 기사로 1km 전체 제작 프로세스를 진행해줘.

기사:
여기에 기사 주소 붙여넣기
```

---

# 1km 전체 제작 프로세스

전체 제작을 요청하면 다음 순서로 진행합니다.

1. 최신 아이템 발굴
2. 후보 비교 및 최종 아이템 선정
3. 선정 기사 중심 딥리서치
4. 대본 작성 전 1차 팩트체크
5. 7~9분 이야기형 구성안
6. 실제 사람이 말하는 듯한 촬영 대본
7. 대본 작성 후 2차 팩트체크
8. 최종 촬영 검수

---

# 필요한 부분만 요청해도 됩니다

반드시 전체 제작을 돌릴 필요는 없습니다.

예:

```text
아이템 10개만 찾아줘.
```

```text
이 기사 딥리서치까지만 해줘.
```

```text
이 내용으로 구성안만 만들어줘.
```

```text
이 내용으로 촬영 대본만 작성해줘.
```

```text
이 대본을 팩트체크해줘.
```

```text
이 대본 최종검수해줘.
```

원하는 부분만 자연스럽게 말하면 됩니다.

---

# 설치가 제대로 됐는지 모르겠어요

각 프로그램에서 아래처럼 확인할 수 있습니다.

## Codex

Codex에게:

```text
1km-content-production 플러그인이 설치되어 있는지 확인해줘.
```

라고 요청합니다.

---

## Claude Code

Claude Code에서:

```text
/plugin
```

을 실행하여 설치된 플러그인을 확인합니다.

---

## Gemini CLI

Windows Terminal에서:

```powershell
gemini extensions list
```

또는 Gemini CLI 안에서:

```text
/extensions list
```

를 실행합니다.

---

# 현재 1km 플러그인 구성

현재 1km 콘텐츠 제작 플러그인에는 다음 제작 스킬이 포함되어 있습니다.

```text
1km-find-items
1km-select-item
1km-research-topic
1km-fact-check
1km-build-outline
1km-write-script
1km-script-fact-check
1km-final-review
1km-full-production
```

일반 사용자는 이 이름들을 외울 필요가 없습니다.

그냥 자연스럽게 원하는 작업을 요청하면 됩니다.

---

# 주의사항

1km는 뉴스와 최신 이슈를 조사하는 제작 프로세스입니다.

최신 정보가 필요한 작업에서는 AI가 인터넷 검색이나 외부 자료 확인을 할 수 있는 환경에서 사용하는 것을 권장합니다.

또한 AI가 작성한 최종 결과는 실제 촬영이나 게시 전에 사람이 마지막으로 확인하는 것을 권장합니다.

---

# 현재 버전

**1km-content-production v1.4.0**

---

# 초보자를 위한 진짜 최종 요약

## ChatGPT 사용자

```text
ChatGPT
↓
Codex
↓
새 작업
↓
GitHub 주소를 주고 설치해달라고 요청
↓
설치 완료
↓
앞으로 그냥 1km 작업 요청
```

---

## Claude 사용자

```text
PowerShell
↓
Claude Code 설치
↓
claude 실행
↓
1km 마켓플레이스 등록
↓
1km 플러그인 설치
↓
앞으로 그냥 1km 작업 요청
```

---

## Gemini 사용자

```text
Node.js 설치
↓
Git 설치
↓
Gemini CLI 설치
↓
1km 확장 설치
↓
gemini 실행
↓
앞으로 그냥 1km 작업 요청
```

---

**세 가지 중 하나만 선택하면 됩니다.**
