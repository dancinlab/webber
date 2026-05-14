<p align="center">
  <img src="docs/logo.svg" width="140" alt="webber">
</p>

<h1 align="center">🕸️ webber</h1>

<p align="center"><strong>Webber</strong> — ~/core/ standalone-project 카탈로그·레지스트리 · 1 프로젝트 = 1 yaml · webber CLI --help aggregator</p>

<p align="center">
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/license-CC0--1.0-blue"></a>
  <img alt="Spec" src="https://img.shields.io/badge/spec-project.schema.yaml-success">
  <img alt="Entries" src="https://img.shields.io/badge/entries-30%2B-informational">
  <img alt="Runtime" src="https://img.shields.io/badge/runtime-hexa--native-informational">
  <img alt="Sibling" src="https://img.shields.io/badge/sibling-bedrock%20·%20hive%20·%20wilson-blueviolet">
</p>

<p align="center">registry · catalog · cli-aggregator · yaml-per-project · hexa-native · cross-project-help</p>

---

# Webber 🕸️

`~/core/` 아래 standalone 프로젝트들을 엮는 카탈로그·레지스트리. hive에서 분리된 30+ 프로젝트를 한 자리에서 조망.

## Repo layout

| 디렉터리 | 역할 |
|---|---|
| `web/` | 프로젝트 엔트리 — 1 프로젝트 = 1 파일 (`<name>.yaml`) |
| `spec/` | 엔트리 스키마 (`project.schema.yaml`) |
| `roadmap/` | webber 자체 계획 |
| `cli/` | CLI 구현 (hexa-native) |
| `state/` | 런타임 산출물 (gitignored) |
| `docs/` | logo.svg · 보조 문서 |

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

## Status

- Active — hexa-native CLI, 30+ project entries in `web/`
- Sibling: `bedrock` 🪨 (governance 기반) · `hive` 🐝 (모노리포 군집) · `wilson` 🏐 (AI coding agent) — 같은 standalone 위계
- Spec SSOT: `spec/project.schema.yaml`

## 형제

`bedrock` 🪨 (governance 기반) / `hive` 🐝 (모노리포 군집) 와 같은 standalone 위계.

## License

[CC0-1.0](LICENSE) — public domain. Use freely.
