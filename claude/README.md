# claude/ — Claude Code Instructions

Same rules as the Cursor `.mdc` files, formatted for Claude Code.

## How Claude Code works (vs Cursor)

| | Cursor | Claude Code |
|---|---|---|
| File format | `.mdc` (YAML frontmatter) | `.md` (plain markdown) |
| Location | `.cursor/rules/*.mdc` | `CLAUDE.md` at project root |
| Multiple files | Yes (numbered) | Yes (nested in subdirectories) |
| Trigger modes | alwaysApply, globs, manual | Always loaded from current + parent dirs |
| File count | 15 separate files | 1 combined file |

## Install

Copy into your project root:

```bash
curl -fsSL https://raw.githubusercontent.com/aiagentwithdhruv/cursor-rules/main/claude/CLAUDE.md -o CLAUDE.md
```

Or clone and copy:

```bash
cp cursor-rules/claude/CLAUDE.md your-project/CLAUDE.md
```

## What's included

One file, all 15 rules combined:

- Default Operating Mode (architect-first thinking)
- Core Engineering Principles (clean architecture, separation of concerns)
- Backend (FastAPI — thin routes, services, repositories)
- Frontend (Next.js — TypeScript, components, API clients)
- Database (PostgreSQL — migrations, indexes, repositories)
- API Contracts (versioning, schema evolution, deprecation)
- Caching (Redis — TTLs, key naming, utilities)
- Environment & Config (startup validation, secrets, .env.example)
- RAG System (chunking, retrieval, ingestion separation)
- Data & Model Versioning (checkpoints, reproducibility, seeds)
- AI Agents (tools, schemas, memory, orchestration)
- Security (secrets, input validation, prompt injection, least privilege)
- Testing & Quality (unit tests, mocking, linting, types)
- Error Handling & Observability (structured errors, tracing, health checks)
- DevOps & Deployment (Docker, AWS, Vercel, VPS, CI/CD)
- Response Style (minimal changes, production code, no toy implementations)

## Customize

Edit `CLAUDE.md` directly. Remove sections you don't need. Add project-specific context.

Claude Code also reads `CLAUDE.md` files in subdirectories — use this for folder-specific rules:

```
your-project/
├── CLAUDE.md                  # Global rules (this file)
├── backend/
│   └── CLAUDE.md              # Backend-specific overrides
├── frontend/
│   └── CLAUDE.md              # Frontend-specific overrides
└── docs/                      # Project docs (same as ../docs/)
```

## Use both

You can use Cursor rules AND Claude Code instructions in the same project:

```
your-project/
├── .cursor/rules/*.mdc        # Cursor reads these
├── CLAUDE.md                  # Claude Code reads this
└── docs/                      # Both reference these
```

Same rules, two formats, zero conflict.
