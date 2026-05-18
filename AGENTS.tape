#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@X hexa_verify := "hexa verify — verification via hexa CLI only" :: guide [active]
  tldr = "Any correctness / purity / grade / identity claim → verify with `hexa <verb>` or `hexa run <verifier>.hexa` (e.g. `hexa run tool/atlas_verify.hexa`) and paste the verdict VERBATIM. NEVER cite sympy / PyPhi / Wolfram / Mathematica output as evidence."
  detail = "~/core/atlas/VERIFY.tape"

@X wilson_pool := "wilson pool — resource utilization" :: guide [active]
  tldr = "Heavy / deterministic work (build · drill · probe · compile · test-sweep · GPU fire) → do NOT serialize on localhost; route to the host pool: `wilson pool list` then `wilson pool on <host> <cmd>`, or a ToolUse `\"host\"` field. Empty roster = degrade-to-local, fine."
  detail = "~/core/atlas/POOL.tape"

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

@D g_arch_vs_log_split := "v1.2 architecture-vs-history split" :: governance [required d=2026-05-14 active]
  rule = "UPPERCASE.tape files are EDITABLE architecture (latest-wins per id). Append-only event history lives in UPPERCASE.log.tape siblings."
  why = "declarative entries (governance · config · layout · identity) evolve naturally; locking them as append-only via ~> supersedes creates noisy histories. The split lets architecture stay current and history stay immutable."
  applies-to = "AGENTS.tape · all UPPERCASE.tape root files"
  authority = "[@x_tape_spec] §Domain-tape sibling §Architecture-vs-history split"
  @> AGENTS.md


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
