# Webber 🕸️

`~/core/` 아래 standalone 프로젝트들을 엮는 카탈로그·레지스트리. hive에서 분리된 30+ 프로젝트를 한 자리에서 조망.

## 구조

| 디렉터리 | 역할 |
|---|---|
| `web/` | 프로젝트 엔트리 — 1 프로젝트 = 1 파일 (`<name>.yaml`) |
| `spec/` | 엔트리 스키마 (`project.schema.yaml`) |
| `roadmap/` | webber 자체 계획 |
| `state/` | 런타임 산출물 (gitignored) |

## Install

```bash
# 1. Install hexa-lang (gives you `hexa` + `hx` package manager)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dancinlab/hexa-lang/main/install.sh)"

# 2. Install webber
hx install webber
```

## Run

```bash
webber              # show usage
webber cli          # aggregate --help of all registered projects (the main feature)
webber list         # short index (emoji name — role)
webber whoami       # print author identity (from secret store)
webber add <name>   # register ~/core/<name> (auto-detects emoji/role/remote from README + git)
webber rm <name>    # unregister a project (deletes web/<name>.yaml)
webber --version    # print version
webber --help       # this message
```

`add` 는 `~/core/<name>/README.md` 의 첫 `# <emoji> <NAME> — <role>` 라인과 `git remote get-url origin` 을 자동 파싱해서 `web/<name>.yaml` 작성.

## 형제

`bedrock` 🪨 (governance 기반) / `hive` 🐝 (모노리포 군집) 와 같은 standalone 위계.
