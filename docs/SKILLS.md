# Skills

Skills are reusable capabilities that Claude Code can invoke. Each skill has a `SKILL.md` that defines what it does, when to use it, and how to execute it.

## Structure

```
.claude/skills/
├── skill-name/
│   ├── SKILL.md         # What it does, inputs, outputs, steps
│   └── scripts/         # Optional automation scripts
└── another-skill/
    └── SKILL.md
```

## SKILL.md Template

```markdown
# Skill Name

## Description
What this skill does in one sentence.

## When to Use
- Trigger condition 1
- Trigger condition 2

## Inputs
- `param1` — Description (required)
- `param2` — Description (optional, default: value)

## Steps
1. Step one
2. Step two
3. Step three

## Output
What gets produced (file, API call, message, etc.)

## Example
Example invocation or usage.
```

## How Skills Work with Rules

Rules define **how** to write code. Skills define **what** to do for specific tasks.

```
Rules (CLAUDE.md / .mdc files)
├── "Use clean architecture"          ← HOW
├── "Never hardcode secrets"          ← HOW
└── "Use Pydantic for validation"     ← HOW

Skills (.claude/skills/)
├── "Deploy to AWS ECS"               ← WHAT
├── "Scrape leads from Google Maps"   ← WHAT
└── "Generate video thumbnails"       ← WHAT
```

## Auto-Discovery

Add this to your `CLAUDE.md` so Claude Code checks skills before building:

```markdown
## Skills
Before building anything, check `.claude/skills/` for existing patterns.
Adapt existing skills instead of starting from scratch.
```

## Skill Categories

| Category | Example Skills |
|----------|---------------|
| Deployment | aws-deploy, vercel-deploy, vps-setup, docker-compose |
| Lead Generation | scrape-leads, classify-leads, enrich-contacts |
| Email | gmail-inbox, cold-email, welcome-sequence |
| Content | video-edit, thumbnail-generator, blog-writer |
| Research | literature-research, competitor-analysis |
| Testing | qa-runner, load-test, smoke-test |
| Infrastructure | add-webhook, local-server, modal-deploy |

## Creating a New Skill

1. Create folder: `.claude/skills/my-skill/`
2. Write `SKILL.md` using the template above
3. Add scripts in `scripts/` if needed
4. Reference from `CLAUDE.md` if it should auto-trigger
