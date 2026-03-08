## Environment & Config

- All environment-specific values must come from environment variables or config files.
- Use a single config module/service that validates all required env vars at startup.
- Fail fast on missing or invalid configuration — do not silently use defaults for critical values.
- Maintain .env.example with every required variable documented (no real values).

### Environment Parity

- dev, staging, and production must use the same config structure.
- Environment-specific behavior must be controlled by explicit flags, not implicit detection.
- Database URLs, API keys, model endpoints, and feature flags must all be configurable per environment.

### Secrets Management

- Never commit .env, credentials.json, token.json, or any file with real secrets.
- Use .gitignore to block secret files.
- In production, prefer secret managers (AWS Secrets Manager, Vercel env vars, VPS env files) over baked-in values.
- Rotate secrets on a schedule or after any exposure.

### Validation

- Validate config at application startup, not at first use.
- Type-check config values (ports as int, URLs as valid URLs, booleans as bool).
- Log which config keys are loaded (never log values) for debugging.

### Do Not

- Hardcode API keys, tokens, passwords, or URLs anywhere in source code.
- Use different config loading patterns across services in the same project.
- Commit .env files or any file listed in .gitignore.
