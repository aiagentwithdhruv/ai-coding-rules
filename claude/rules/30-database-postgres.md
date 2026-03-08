## Database (PostgreSQL)

- PostgreSQL is the source of truth for structured application data.
- Use migrations for all schema changes.
- Design tables with clear ownership, timestamps, and constraints.
- Add indexes for common filters and joins.
- Use foreign keys where appropriate.
- Prefer soft-delete only when there is a real product need.

### Schema Design

- Every core entity should have: id, created_at, updated_at.
- For SaaS systems, include tenant/organization isolation where relevant.
- Use enums or constrained fields for finite states where appropriate.
- Keep schemas normalized unless denormalization is justified by performance needs.

### Repository Rules

- All DB access must go through repositories/data access layer.
- Keep query code out of routes and services unless trivial and already patterned.
- Parameterize queries.
- Avoid N+1 query patterns.
- Use transactions when multiple writes must succeed together.

### Do Not

- Write raw SQL inside controllers/routes.
- Make schema changes without migration files.
- Assume single-tenant if the product is multi-tenant.
