## Error Handling & Observability

### Error Handling

- Use structured error responses with consistent shape: {error, code, message, details}.
- Define application-specific error codes for common failure modes.
- Catch errors at service boundaries — do not let raw exceptions leak to clients.
- Distinguish client errors (4xx) from server errors (5xx) explicitly.
- Handle timeout, rate-limit, and upstream failure cases gracefully.
- For AI/ML: handle model loading failures, inference timeouts, and malformed outputs.

### Logging

- Use structured logging (JSON format) in production.
- Include request_id / trace_id in every log entry for request tracing.
- Log at appropriate levels: DEBUG for dev, INFO for flow, WARN for recoverable, ERROR for failures.
- Log what happened and why, not just that something failed.
- Never log secrets, tokens, passwords, PII, or full request/response bodies with sensitive data.

### Observability

- Add request tracing across services (OpenTelemetry or equivalent).
- Track key metrics: request latency, error rate, queue depth, model inference time.
- Set up alerts for error rate spikes and latency degradation.
- For training: log loss curves, GPU utilization, and checkpoint save events.

### Health Checks

- Every service must expose a health endpoint.
- Health checks should verify critical dependencies (DB, Redis, model loaded).
- Use liveness and readiness probes in containerized deployments.

### Do Not

- Swallow exceptions silently.
- Return generic "Internal Server Error" without logging the actual cause.
- Log at ERROR level for expected/handled conditions.
- Rely solely on print statements for production debugging.
