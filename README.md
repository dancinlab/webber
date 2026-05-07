# Webber 🕸️

`~/core/` 아래 standalone 프로젝트들을 엮는 카탈로그·레지스트리. hive에서 분리된 30+ 프로젝트를 한 자리에서 조망.

## 구조

| 디렉터리 | 역할 |
|---|---|
| `web/` | 프로젝트 엔트리 — 1 프로젝트 = 1 파일 (`<name>.yaml`) |
| `spec/` | 엔트리 스키마 (`project.schema.yaml`) |
| `roadmap/` | webber 자체 계획 |
| `state/` | 런타임 산출물 (gitignored) |

## 형제

`bedrock` 🪨 (governance 기반) / `hive` 🐝 (모노리포 군집) 와 같은 standalone 위계.
