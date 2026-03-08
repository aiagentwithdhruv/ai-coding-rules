## Backend (FastAPI)

Stack: FastAPI, Pydantic, SQLAlchemy/SQLModel, PostgreSQL, Redis.

- Use clean architecture.
- Routes/controllers should only handle HTTP concerns.
- Business logic must live in services.
- Database access must live in repositories.
- Validation must be done using Pydantic schemas/models.
- Use dependency injection patterns where appropriate.
- Use async I/O where supported and beneficial.
- Use pagination for list endpoints.
- Use consistent response models.
- Use centralized exception handling.

### API Conventions

- Follow RESTful naming.
- Version APIs when needed, e.g. /api/v1/.
- Use proper status codes.
- Return predictable response structure.
- Do not leak internal stack traces or raw database errors.

### Preferred Structure

```
backend/
├── api/routes/
├── api/dependencies/
├── services/
├── repositories/
├── models/
├── schemas/
├── core/
├── utils/
└── tests/
```

### Do Not

- Put SQL or ORM-heavy logic inside route files.
- Put business logic inside Pydantic schemas.
- Put environment variables directly across many files; centralize in config.
- Mix unrelated domains in the same service file.
