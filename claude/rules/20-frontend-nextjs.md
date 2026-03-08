## Frontend (Next.js)

Stack: Next.js, TypeScript, Component-driven UI.

- Prefer TypeScript for all frontend logic.
- Keep components small, reusable, and focused.
- Keep presentation separate from business/data-fetching logic.
- Use hooks, services, or server actions appropriately based on project style.
- Handle loading, error, and empty states explicitly.
- Preserve design consistency and naming consistency.

### Preferred Structure

```
frontend/
├── app/
├── components/
├── features/
├── hooks/
├── lib/
├── services/
├── types/
└── tests/
```

### UI/UX

- Use accessible markup and semantic HTML.
- Prefer reusable design system components.
- Avoid oversized page components.
- Avoid embedding complex API logic directly inside visual components.

### State/Data

- Keep API clients centralized.
- Normalize repeated API access patterns.
- Handle auth state carefully.
- Validate critical inputs on both client and server.

### Do Not

- Mix many responsibilities into one component.
- Hardcode API URLs in components.
- Duplicate UI patterns that should be shared.
