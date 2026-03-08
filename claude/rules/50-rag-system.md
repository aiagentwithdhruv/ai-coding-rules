## RAG System

- Separate ingestion, parsing, chunking, embedding, indexing, retrieval, reranking, context assembly, and answer generation.
- Keep retrieval logic independent from answer generation logic.
- Preserve source metadata for traceability.

### RAG Rules

- Never dump raw full documents into prompts when chunking is expected.
- Use deterministic chunking strategies unless explicitly experimenting.
- Maintain chunk metadata such as source, page, section, title, tenant, and timestamps where relevant.
- Prefer source attribution/citations in outputs when the product requires trust and traceability.
- Add configurable retrieval parameters such as top_k, filters, score thresholds, and reranking options.

### Ingestion

- Support clean document ingestion pipelines.
- Normalize and sanitize extracted text.
- Preserve source identity and version if relevant.
- Re-embed only when necessary.

### Answering

- Ground answers in retrieved context.
- Handle no-context and low-confidence cases gracefully.
- Avoid hallucinating unavailable facts.
- Return structured outputs where the product requires it.

### Do Not

- Mix ingestion code with runtime answer generation in the same module.
- Make retrieval behavior impossible to inspect or tune.
- Hide retrieval failures silently.
