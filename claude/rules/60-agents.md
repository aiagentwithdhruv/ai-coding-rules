## AI Agents

### Architecture

- Separate planner, executor, tools, memory, state, and evaluation logic.
- Agents must be modular and role-specific where possible.
- Tool calls should be explicit, validated, and logged.

### Agent Rules

- Agents must not directly access databases or external APIs unless explicitly designed through a tool layer.
- Prompts must be templated and stored separately from orchestration logic.
- Keep critical business workflows deterministic where possible.
- Add output validation and fallback behavior.
- Use structured schemas for agent outputs in production paths.
- Prefer supervisor/policy logic for multi-agent coordination.

### Tooling

- Every tool should have: a clear purpose, input schema, output schema, failure behavior.
- Tools should be side-effect aware.
- Sensitive tools must enforce auth and authorization checks.

### Memory/State

- Separate short-term conversational state from long-term memory.
- Store long-term memory only when product requirements justify it.
- Track provenance for stored memories if relevant.

### Do Not

- Let agents perform unrestricted actions.
- Hide tool errors.
- Mix prompt text deeply into service/business code.
