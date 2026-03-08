# LOADOUT.md — Project Manifest Template

A LOADOUT is a project manifest that gives AI tools instant context about any project. Drop one at the root of every project so Claude Code or Cursor knows what it's working with.

## Template

Copy this into your project root as `LOADOUT.md`:

```markdown
# Project Name

## Status
<!-- active | paused | archived -->
active

## One-Liner
<!-- What this project does in one sentence -->

## Stack
- Frontend:
- Backend:
- Database:
- Cache:
- AI/ML:
- Deployment:

## Key Files
| File | Purpose |
|------|---------|
| `src/main.py` | Entry point |
| `config/` | Configuration |
| `.env.example` | Required env vars |

## Architecture
<!-- 3-5 bullet points on how the system is structured -->

## Current State
<!-- What's built, what's not, what's broken -->
- [x] Auth working
- [x] Database schema
- [ ] RAG pipeline
- [ ] Deployment

## Commands
| Command | What it does |
|---------|-------------|
| `npm run dev` | Start frontend |
| `uvicorn main:app --reload` | Start backend |
| `docker compose up` | Start all services |
| `pytest` | Run tests |

## Context
<!-- Links to related docs, PRDs, designs -->
- PRD: `docs/PRD.md`
- Architecture: `docs/ARCHITECTURE.md`
- API Spec: `docs/API_SPEC.md`

## Last Updated
<!-- YYYY-MM-DD -->
```

## Why Use LOADOUTs

Without a LOADOUT, AI tools waste time asking:
- "What framework are you using?"
- "Where's the entry point?"
- "Is this deployed?"
- "What's the current state?"

With a LOADOUT, they know instantly.

## Where to Place

```
your-project/
├── LOADOUT.md              # Project manifest
├── CLAUDE.md               # Claude Code rules
├── .cursor/rules/          # Cursor rules
└── docs/                   # Detailed docs
```

LOADOUT = **what the project is**. CLAUDE.md = **how to work on it**. Docs = **detailed specs**.

## Multi-Project Workspace

If you manage multiple projects, keep an index:

```
workspace/
├── INDEX.md                # Lists all projects + status
├── project-a/
│   └── LOADOUT.md
├── project-b/
│   └── LOADOUT.md
└── project-c/
    └── LOADOUT.md
```
