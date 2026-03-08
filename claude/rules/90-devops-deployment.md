## DevOps & Deployment

Deployment targets: Docker, AWS (ECS Fargate, Lambda, S3), Vercel, VPS (Ubuntu/Debian), CI/CD.

### DevOps Rules

- Applications must be container-friendly.
- Keep builds reproducible.
- Use environment-driven configuration.
- Separate build-time config from runtime config.
- Add health checks where appropriate.
- Keep services stateless unless statefulness is intentional and documented.
- Ensure logs are structured and production-usable.

### Docker

- Keep Dockerfiles clean and optimized.
- Prefer multi-stage builds when useful.
- Avoid baking secrets into images.
- Minimize image size where practical.
- Use .dockerignore to exclude node_modules, .env, .git, checkpoints.

### AWS

- Prefer managed services where appropriate.
- Use least-privilege IAM policies.
- Make networking and environment assumptions explicit.
- Support observability via logs, metrics, and alarms.
- Design for rollback-safe deployments.

### Vercel

- Use vercel.json for project configuration.
- Set environment variables via Vercel dashboard, never in code.
- Use Edge/Serverless functions for API routes.
- Keep build output under Vercel size limits.
- Use preview deployments for PR review.
- Configure custom domains and redirects in vercel.json.

### VPS

- Use systemd or PM2 for process management.
- Set up Nginx/Caddy as reverse proxy with SSL (Let's Encrypt).
- Use UFW or iptables for firewall — only expose necessary ports.
- Set up unattended-upgrades for security patches.
- Use SSH keys only — disable password auth.
- Keep deployment scripted and repeatable (shell scripts or Ansible).

### CI/CD

- Run lint, tests, and build validation before merge/deploy.
- Prevent obviously broken releases.
- Keep deployment config version-controlled.
- Use separate environments where needed, e.g. dev/staging/production.
- Use GitHub Actions for CI, Vercel for frontend CD, and scripts for VPS CD.

### Do Not

- Hardcode AWS-specific IDs, Vercel tokens, or VPS IPs in code.
- Mix deployment-only hacks into application logic.
- Assume local-only paths/config in production code.
- Run services as root on VPS.
- Expose database ports publicly on any platform.
