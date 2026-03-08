# cursor-rules

Production-grade rules + project docs for AI-native full-stack development. Works with **Cursor** and **Claude Code**.

15 rules + 5 doc templates + 2 formats. Drop into any project. Your AI coding tool immediately thinks like a senior engineer.

## What's inside

```
cursor-rules/
├── rules/                          # 15 Cursor rules (.mdc)
├── claude/                         # Claude Code equivalent
│   └── CLAUDE.md                   # All 15 rules in one file
├── docs/                           # 5 project doc templates
│   ├── PRD.md                      # Product requirements
│   ├── ARCHITECTURE.md             # System architecture + data flow
│   ├── API_SPEC.md                 # API endpoints + response format
│   ├── DB_SCHEMA.md                # Tables, columns, indexes, rules
│   └── DEPLOYMENT.md               # Local + cloud + CI/CD setup
├── install.sh                      # One-liner installer
└── README.md
```

### Rules

```
rules/
├── 00-global-architect.mdc      # Principal architect mindset (alwaysApply)
├── 10-backend-fastapi.mdc       # FastAPI / clean architecture
├── 20-frontend-nextjs.mdc       # Next.js / TypeScript / components
├── 30-database-postgres.mdc     # PostgreSQL / migrations / repositories
├── 35-api-contracts.mdc         # API versioning / schema evolution
├── 40-cache-redis.mdc           # Redis / caching / queues
├── 45-environment-config.mdc    # Env vars / secrets / config validation (alwaysApply)
├── 50-rag-system.mdc            # RAG / chunking / retrieval / ingestion
├── 55-data-model-versioning.mdc # Dataset versioning / checkpoints / reproducibility
├── 60-agents.mdc                # AI agents / tools / memory / orchestration
├── 70-security.mdc              # Security / prompt injection / infra hygiene (alwaysApply)
├── 80-testing-quality.mdc       # Testing philosophy / code quality (alwaysApply)
├── 85-error-observability.mdc   # Error handling / logging / health checks (alwaysApply)
├── 90-devops-deployment.mdc     # Docker / AWS / Vercel / VPS / CI-CD
└── 99-response-style.mdc        # Response behavior / minimal changes (alwaysApply)
```

## Why docs matter

Rules tell AI **how** to write code. Docs tell AI **what** you're building.

The `00-global-architect.mdc` rule reads your docs automatically:
```
Before implementing, align with docs/PRD.md, docs/ARCHITECTURE.md,
docs/API_SPEC.md, docs/DB_SCHEMA.md, and docs/DEPLOYMENT.md if present.
```

Without docs: AI guesses your product structure.
With docs: AI knows your tables, endpoints, layers, and deployment targets.

**The docs are templates.** Replace placeholder values with your product details. Remove sections you don't need. They're designed for an AI SaaS product but adapt to anything.

## Install

### One-liner (recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/aiagentwithdhruv/cursor-rules/main/install.sh | bash
```

### Manual

```bash
git clone https://github.com/aiagentwithdhruv/cursor-rules.git
cp cursor-rules/rules/*.mdc your-project/.cursor/rules/
```

### Pick specific rules

Only need backend + security + testing?

```bash
mkdir -p .cursor/rules
curl -fsSL https://raw.githubusercontent.com/aiagentwithdhruv/cursor-rules/main/rules/00-global-architect.mdc -o .cursor/rules/00-global-architect.mdc
curl -fsSL https://raw.githubusercontent.com/aiagentwithdhruv/cursor-rules/main/rules/10-backend-fastapi.mdc -o .cursor/rules/10-backend-fastapi.mdc
curl -fsSL https://raw.githubusercontent.com/aiagentwithdhruv/cursor-rules/main/rules/70-security.mdc -o .cursor/rules/70-security.mdc
curl -fsSL https://raw.githubusercontent.com/aiagentwithdhruv/cursor-rules/main/rules/80-testing-quality.mdc -o .cursor/rules/80-testing-quality.mdc
```

## How it works

Cursor loads `.mdc` files from `.cursor/rules/` with different trigger modes:

| Mode | When it fires | Rules using it |
|------|--------------|----------------|
| **Always Apply** | Every chat + Cmd+K | 00, 45, 70, 80, 85, 99 |
| **Glob match** | When you edit matching files | 10, 20, 30, 35, 40, 50, 55, 60, 90 |

Rules are numbered with gaps (00, 10, 20...) so you can insert custom rules between them without renaming files.

## What each rule does

| # | Rule | What it enforces |
|---|------|-----------------|
| 00 | **Global Architect** | Think architect-first. Clean architecture. Separation of concerns. No shortcuts. |
| 10 | **Backend FastAPI** | Thin routes. Business logic in services. DB in repositories. Pydantic schemas. |
| 20 | **Frontend Next.js** | TypeScript. Small components. Centralized API clients. Accessible markup. |
| 30 | **Database PostgreSQL** | Migrations for everything. Indexes. Foreign keys. No raw SQL in routes. |
| 35 | **API Contracts** | Version APIs. Typed schemas. Consistent error format. Deprecation process. |
| 40 | **Cache Redis** | Intentional TTLs. Stable key naming. No unbounded payloads. |
| 45 | **Environment Config** | Validate at startup. .env.example. Secret managers in prod. |
| 50 | **RAG System** | Separate ingestion from generation. Chunk metadata. Source attribution. |
| 55 | **Data & Model Versioning** | Version datasets. Named checkpoints. Pinned dependencies. Reproducible training. |
| 60 | **Agents** | Tool schemas. Validated outputs. Separate memory layers. Supervisor patterns. |
| 70 | **Security** | No hardcoded secrets. Input validation. Prompt injection resistance. Least privilege. |
| 80 | **Testing & Quality** | Tests for critical paths. Deterministic units. No live API deps. Linting. |
| 85 | **Error & Observability** | Structured errors. Request tracing. Health checks. No silent failures. |
| 90 | **DevOps & Deployment** | Docker multi-stage. AWS least-privilege. Vercel preview deploys. VPS hardening. |
| 99 | **Response Style** | Minimal changes. Production code. No toy implementations. |

## Customization

### Add your own rules

Create a new `.mdc` file in `.cursor/rules/` with a number that fits:

```mdc
---
description: My custom Python rules
globs: "**/*.py"
---

Python rules:
- Use Black formatter with line length 100.
- Use ruff for linting.
- Prefer dataclasses over plain dicts for structured data.
```

### Modify existing rules

Edit any `.mdc` file directly. Changes take effect immediately in Cursor.

### Stack-specific presets

Don't use Next.js? Replace `20-frontend-nextjs.mdc` with your framework:
- `20-frontend-react.mdc` for React + Vite
- `20-frontend-svelte.mdc` for SvelteKit
- `20-frontend-vue.mdc` for Nuxt

Don't use FastAPI? Replace `10-backend-fastapi.mdc`:
- `10-backend-express.mdc` for Express/Node
- `10-backend-django.mdc` for Django
- `10-backend-go.mdc` for Go

## Claude Code

Same rules, different format. Pre-built `CLAUDE.md` included — just copy it:

```bash
curl -fsSL https://raw.githubusercontent.com/aiagentwithdhruv/cursor-rules/main/claude/CLAUDE.md -o CLAUDE.md
```

| | Cursor | Claude Code |
|---|---|---|
| Format | 15 `.mdc` files with YAML frontmatter | 1 `CLAUDE.md` (plain markdown) |
| Location | `.cursor/rules/` | Project root |
| Triggers | alwaysApply, globs, manual | Always loaded |
| Install | `install.sh` or manual copy | Single file copy |

Use both in the same project — zero conflict:
```
your-project/
├── .cursor/rules/*.mdc     # Cursor reads these
├── CLAUDE.md               # Claude Code reads this
└── docs/                   # Both reference these
```

## Why gap numbering?

Rules use 00, 10, 20... (not 1, 2, 3...) so you can insert between them:

```
00-global-architect.mdc
05-your-custom-rule.mdc     ← fits right in
10-backend-fastapi.mdc
```

No renaming. No conflicts.

## Credits

Built by [@AiwithDhruv](https://github.com/aiagentwithdhruv) with Claude Code.

Production-tested across 30+ projects spanning AI agents, RAG systems, SaaS products, and client work.

## License

MIT — use it, fork it, ship better code.
