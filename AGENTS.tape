#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════════════
# .tape v1.2 — grammar primer (cold-read by any LLM / agent / human)
# ══════════════════════════════════════════════════════════════════════
# Form: each entry is `@<type> <id> := "<subject>" :: <kind> [<grades>]`
#       optionally followed by body lines (2-space indent) — key=value,
#       edges (<- -> => …), or quoted prose.
#
# ENTRY TYPES (17):
#   Runtime (10): @S session  @U user  @A assistant  @T tool-call  @R result
#                 @H hook  @D decision  @K cost  @P provider  @? anomaly
#   Foundation:   @I identity-claim
#   Declarative:  @X external-citation  @F forbidden-pattern  @N note
#                 @C config  @L layout  @V spec-version
#
# EDGES (12, on body lines, 2-space indent):
#   Causal:     <- caused-by   -> triggers   == continues
#               ~> supersedes  !! aborts     |> verified-by
#   Effect:     => produces (followed by quoted natural-language)
#   Structural: <: specializes  :> generalizes  ?> soft-depends
#               !> conflicts-with  @> projects-to (e.g. @> AGENTS.md)
#
# GRADE TAGS (in [...] on entry header):
#   Delivery:   ok · err · denied · cancelled · partial · superseded
#   Governance: required · recommended · optional · draft · active · deprecated
#   Scoped:     allow:<x> · deny:<x>
#   Time/index: T<n> (turn)  N<n> (wall-sec)  d=<YYYY-MM-DD>
#
# PAYLOAD SYNTAX (body lines):
#   key = "value"           single-line string
#   key = [a, b, c]         array literal
#   key <<~EOF              heredoc (multi-line; ends with EOF on own line)
#     multi-line text
#   EOF
#   "see [@x1] §3"          inline citation by entry id
#   `cmd or path`           backtick code-span (inline only)
#
# Full spec: ~/core/tape/spec/tape.md (or github.com/dancinlab/tape)
# ══════════════════════════════════════════════════════════════════════

@V := "tape" :: spec [active]
  version = "1.2"

# ─── identity ─────────────────────────────────────────────────────────

@I id001 := "webber" :: project [active]
  emoji = "🕸️"
  one_liner = "~/core/ standalone-project 카탈로그·레지스트리 — 1 프로젝트 = 1 yaml 파일"
  kind = "hexa-native CLI (project registry + cross-project --help aggregator)"
  brief = "~/core/ standalone-project registry · webber CLI --help aggregator"
  parent = "dancinlab"
  repo = "github.com/dancinlab/webber"
  local_path = "~/core/webber/"
  entrypoint = "cli/webber.hexa"
  install = "hx install webber"
  feature = "webber cli — aggregate --help of all registered projects (main feature)"
  siblings = ["bedrock 🪨 (governance)", "hive 🐝 (monorepo cluster)"]

# ─── repo layout ──────────────────────────────────────────────────────

@L l1 := "repo layout" :: structure [active]
  cli_webber_hexa = "hexa-lang CLI entrypoint"
  web = "1 project = 1 yaml file (airgenome / anima / bedrock / canon / hexa-lang / nexus / webber …)"
  spec_project_schema = "yaml schema for web/ entries"
  roadmap = "webber's own plan"
  state = "runtime artifacts (gitignored)"
  hexa_toml = "hexa-lang manifest"
  TAPE_AUDIT_md = "tape adoption audit"
  README_md = "human-facing intro (KO)"
  AGENTS_tape = "this file — agent context SSOT"
  CLAUDE_md = "symlink → AGENTS.tape"

# ─── governance ───────────────────────────────────────────────────────

@D g_inherit := "inherits dancinlab lattice policy" :: governance [active]
  -> "see [@x_lattice_policy] for the universal real-limits-first rule"
  => "this repo binds the same n=6-is-a-tool-not-constraint stance"

@D g1 := "real-limits-first" :: governance [active required]
  rule = "registry ceiling = number of real standalone projects under ~/core/ — not lattice index"
  |> "verification: `webber list` count must match `ls ~/core/ | wc -l` minus non-projects (gitignored / drafts)"

@D g2 := "lattice-is-tool" :: governance [active required]
  rule = "n=6 lattice does NOT cap project count; webber registers as many as actually exist in ~/core/"
  !> "fit-to-convenient-number — never trim/pad the registry to match a lattice index"

@D g3 := "honesty-obligation-external" :: governance [active required]
  rule = "yaml entry MUST reflect upstream truth — `webber add <name>` parses `~/core/<name>/README.md` first line + `git remote get-url origin`; manual edits MUST stay in sync"
  !> "fabricating an emoji / role / remote that the source project does not declare"

@D g4 := "commit-conventions" :: governance [active recommended]
  format = "<scope>: <one-line> — <why>"
  trailer = "Co-Authored-By: <agent> when AI-assisted"

# ─── forbidden patterns ───────────────────────────────────────────────

@F f1 := "lattice-fit on external entity" :: anti-pattern [active deny]
  rule = "do not force registered external projects (anima, nexus, canon, hexa-lang, …) into the n=6 lattice — each sibling repo has its own invariants"
  rationale = "registry mirrors reality; lattice-fitting the catalog corrupts the source-of-truth role"

# ─── external citations ───────────────────────────────────────────────

@X x_lattice_policy := "echoes/LATTICE_POLICY.md" :: doc [active]
  scope = "dancinlab-wide real-limits-first verification policy"
  origin = "Wave K, 2026-05-12"

@X x_tape_spec := "~/core/tape/spec/tape.md" :: doc [active]
  version = "1.2"
  repo = "github.com/dancinlab/tape"

# ─── history ──────────────────────────────────────────────────────────

@H h1 := "AGENTS.md replaced by AGENTS.tape" :: migration [active d=2026-05-14]
  ~> "prior empty AGENTS.md placeholder"
  => "single-source agent context now lives in this tape (.tape v1.2)"

@H h2 := "CLAUDE.md → AGENTS.tape symlink" :: migration [active d=2026-05-14]
  rule = "CLAUDE.md is a symlink so Claude Code reads the same tape"
