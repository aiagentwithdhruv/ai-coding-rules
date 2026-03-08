## Data & Model Versioning

### Dataset Versioning

- Every dataset must have a version identifier (filename suffix, metadata field, or manifest).
- When dataset format changes, provide a migration script from previous version.
- Keep a CHANGELOG or manifest documenting what changed between dataset versions.
- Never silently modify a dataset that is already used in production or published training runs.

### Model Checkpoint Management

- Save checkpoints with metadata: base model, dataset version, hyperparameters, timestamp, commit hash.
- Use consistent naming: {model}_{technique}_{dataset_version}_{step/epoch}.
- Store checkpoint metadata alongside weights (JSON sidecar or W&B artifact).
- Never overwrite a checkpoint — always create new versioned saves.

### Training Reproducibility

- Pin all dependencies (requirements.txt with exact versions or lock file).
- Log full training config (LoRA rank, alpha, dropout, lr, batch size, epochs, seed).
- Set random seeds for reproducible runs.
- Record hardware info (GPU type, VRAM, CUDA version) in run metadata.
- Store the exact dataset hash or version used for each training run.

### Evaluation

- Track eval metrics per checkpoint (loss, perplexity, task-specific scores).
- Compare against baseline before declaring improvement.
- Keep eval datasets versioned and separate from training data.

### Do Not

- Train on modified data without updating the version.
- Delete or overwrite checkpoints from successful runs.
- Ship a model without documenting which dataset and config produced it.
- Mix training and evaluation data.
