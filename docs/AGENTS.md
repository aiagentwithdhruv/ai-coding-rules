# Agents

Agents are specialized subprocesses that handle complex tasks autonomously. Use them to parallelize work, isolate context, or enforce specific output formats.

## When to Use Agents

| Situation | Use Agent? | Why |
|-----------|-----------|-----|
| Simple file edit | No | Direct edit is faster |
| Code review | Yes | Isolated context, unbiased |
| Research across many files | Yes | Protects main context window |
| Running tests | Yes | Parallel, non-blocking |
| Multi-step automation | Yes | Autonomous execution |
| Quick search | No | Grep/Glob is faster |

## Agent Types

### Code Reviewer
Reads code and returns PASS/FAIL with specific issues.

```markdown
# Agent: code-reviewer

## Role
Unbiased code review. Never writes code — only reviews.

## Output Format
- PASS or FAIL
- List of issues (if FAIL)
- Severity: critical, warning, info

## What to Check
- Architecture violations
- Security issues
- Missing error handling
- Test coverage gaps
- Performance concerns
```

### Research Agent
Deep research without polluting main conversation context.

```markdown
# Agent: research

## Role
Research a topic, return structured findings.

## Output Format
- Summary (3-5 sentences)
- Key findings (bulleted)
- Sources/references
- Recommendations
```

### QA Agent
Generate and run tests for new or modified code.

```markdown
# Agent: qa

## Role
Test generation and execution.

## Steps
1. Read the code being tested
2. Generate test cases
3. Run tests
4. Report results
```

## Agent Architecture Pattern

```
Main Conversation
├── User request
├── Claude routes to appropriate agent
│   ├── Agent A (research) — runs in background
│   ├── Agent B (code review) — runs in foreground
│   └── Agent C (tests) — runs in background
├── Results return to main context
└── Claude synthesizes and responds
```

## Key Principles

1. **Separation of concerns** — each agent has one job
2. **Read-only reporters** — review agents never modify code
3. **Structured output** — agents return predictable formats
4. **Context isolation** — agents don't see each other's work
5. **Parallel execution** — independent agents run simultaneously

## Creating an Agent

Place in `.claude/agents/`:

```
.claude/agents/
├── code-reviewer/
│   └── AGENT.md
├── research/
│   └── AGENT.md
└── qa/
    └── AGENT.md
```

### AGENT.md Template

```markdown
# Agent Name

## Role
One sentence: what this agent does.

## Trigger
When should this agent be spawned?

## Input
What context does it need?

## Output Format
Exact structure of what it returns.

## Constraints
- What it must NOT do
- What it must ALWAYS do
```
