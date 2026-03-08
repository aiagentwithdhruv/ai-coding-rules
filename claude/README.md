# claude/ — Claude Code Instructions

Same 15 rules as the Cursor `.mdc` files, formatted for Claude Code.

## Structure

```
claude/
├── CLAUDE.md              # Ready-to-use — all 15 rules combined
├── compose.sh             # Build custom CLAUDE.md from individual rules
├── rules/                 # 15 individual rule files
│   ├── 00-global-architect.md
│   ├── 10-backend-fastapi.md
│   ├── 20-frontend-nextjs.md
│   ├── 30-database-postgres.md
│   ├── 35-api-contracts.md
│   ├── 40-cache-redis.md
│   ├── 45-environment-config.md
│   ├── 50-rag-system.md
│   ├── 55-data-model-versioning.md
│   ├── 60-agents.md
│   ├── 70-security.md
│   ├── 80-testing-quality.md
│   ├── 85-error-observability.md
│   ├── 90-devops-deployment.md
│   └── 99-response-style.md
└── README.md
```

## Install

### Option 1: Full rules (recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/aiagentwithdhruv/ai-coding-rules/main/claude/CLAUDE.md -o CLAUDE.md
```

### Option 2: Compose custom

Pick only the rules you need:

```bash
git clone https://github.com/aiagentwithdhruv/ai-coding-rules.git
cd ai-coding-rules/claude

# All rules
./compose.sh > ~/my-project/CLAUDE.md

# Backend only (no frontend, no AI)
./compose.sh 00 10 30 35 40 45 70 80 85 90 99 > ~/my-project/CLAUDE.md

# Frontend only
./compose.sh 00 20 45 70 80 85 99 > ~/my-project/CLAUDE.md

# AI/ML only (RAG + agents + versioning)
./compose.sh 00 50 55 60 70 80 85 99 > ~/my-project/CLAUDE.md
```

### Option 3: Manual pick

Copy individual files from `rules/` and paste into your `CLAUDE.md`.

## How Claude Code loads rules

| Location | When it loads |
|----------|--------------|
| `CLAUDE.md` at project root | Always (every conversation) |
| `CLAUDE.md` in subdirectory | When working in that directory |
| `~/.claude/CLAUDE.md` | Global (all projects) |

### Subdirectory rules

Split rules across directories — Claude Code stacks parent + current:

```
your-project/
├── CLAUDE.md                  # Global (00 + 45 + 70 + 80 + 85 + 99)
├── backend/
│   └── CLAUDE.md              # Backend-specific (10 + 30 + 35 + 40)
├── frontend/
│   └── CLAUDE.md              # Frontend-specific (20)
├── ai/
│   └── CLAUDE.md              # AI-specific (50 + 55 + 60)
└── docs/
```

## Cursor vs Claude Code

| | Cursor | Claude Code |
|---|---|---|
| Format | `.mdc` with YAML frontmatter | `.md` plain markdown |
| Location | `.cursor/rules/` | Project root `CLAUDE.md` |
| Multiple files | Yes (numbered) | Yes (nested in subdirectories) |
| Triggers | alwaysApply, globs, manual | Directory-based (always loaded) |
| Install | Copy `.mdc` files | Copy one file or compose |

Use both — zero conflict:

```
your-project/
├── .cursor/rules/*.mdc     # Cursor reads these
├── CLAUDE.md               # Claude Code reads this
└── docs/                   # Both reference these
```
