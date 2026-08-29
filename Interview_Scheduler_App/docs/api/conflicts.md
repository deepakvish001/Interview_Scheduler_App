# Conflict check endpoint

## Purpose

Specify explainable scheduling conflict results.

## Scope

- conflicting interview references
- buffer-aware evaluation
- no record mutation

## Acceptance criteria

- The behavior is explicit and can be reviewed independently.
- Failure paths are documented alongside the successful path.
- Inputs, outputs, ownership, and observable outcomes are unambiguous.
- The guidance remains compatible with the current Rails application while leaving room for incremental modernization.

## Implementation notes

Start with the smallest change that satisfies the contract. Keep scheduling rules outside controllers, preserve database integrity with transactions where multiple records change, and add automated coverage before enabling the behavior in production.

## Verification

Review the affected request, model, job, or deployment path locally. Exercise at least one successful scenario, one validation failure, and one operational failure. Record any follow-up work as a separate focused change.

---
Document type: API contract.
