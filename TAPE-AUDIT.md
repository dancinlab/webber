# TAPE-AUDIT — webber

> Audit-class survey for `.tape` adoption (typed events + provenance edges + delivery grade).

## A. Audit-class ledgers
**CARGO only.** `state/markers/webber_*.marker` (plain + `_FAILED` suffix variants) — repetitive self-mk2-tuning / domain-landed markers. No `.jsonl` ledgers. No `audit/` dir. Webber is a catalog / registry, not an event source.

## B. Identity surface
**Project identity** is the explicit surface — webber's purpose is to register and catalog 30+ standalone projects under `~/core/`. Each registered project = an identity. Fits a static project-registry atom shape, not an event tape.

## C. Domain.md files
Minimal: `AGENTS.md`, `CLAUDE.md`, `README.md`. Webber is the registry, not the registrand — its UPPERCASE.md domain surface should be intentionally light.

## D. Per-run / per-event history
None. Webber re-renders a catalog page; there's nothing to historize beyond "last refreshed at T".

## E. Promotion candidates
- **n6 atoms (HIGH conceptually)**: the project registry itself IS atom-shaped — `(project_id, role, repo_url, status, tags)`. Webber should be a thin renderer of `~/core/`'s registry-atom set.
- **`.tape` events**: not applicable beyond refresh markers (cargo).
- **n12 cube**: not applicable.
- **hxc wire**: not applicable.

## Verdict
**LIGHT** — webber is a catalog renderer, not an event source. Markers are cargo. The promotion story is: webber's registry rows should source from n6 atoms in `nexus`, not generate its own `.tape`.
