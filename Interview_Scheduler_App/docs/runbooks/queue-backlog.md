# Drain a background job backlog

## Purpose

Reduce queued work without duplicate delivery.

## Scope

- measure age and job types
- scale workers within provider limits
- monitor retry and failure rates

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
Document type: Quality assurance plan.
