---
type: concept
created: 2026-09-18
updated: 2026-09-18
sources:
  - "[[sources/readme_132946]]"
tags:
aliases:
  - "Archive Structure"
  - "Legacy Files"
generation_complete: true
---

# Legacy Structure

## Definition

The Legacy Structure is a repository organization method used to isolate and preserve files displaced during migration processes. It serves as an archival layer that prevents data loss resulting from file path conflicts between new system architectures and superseded configurations.

## Key Characteristics

- **Isolation**: Maintains a physical separation between current, canonical project files and historical versions.
- **Conflict Mitigation**: Resolves naming or path collisions that occur when migrating data to updated structures.
- **Historical Continuity**: Acts as an audit trail for file evolution within a project.
- **Version Control Support**: Simplifies the tracking of superseded assets without cluttering the active development environment.

## Applications

- Managing file migrations within the [[entities/nightfall|Nightfall]] project.
- Archiving legacy assets that are no longer referenced by active code but required for historical record.
- Providing a fallback environment during system deployments to ensure rapid recovery if a migration fails.

## Related Concepts

## Related Entities

- [[entities/nightfall|Nightfall]]

## Mentions in Source

- "These files were preserved during the one-shot Nightfall migration because a canonical destination file with the same path already existed." — [[03-projects/Nightfall/90-Archive/Legacy Structure/README|README]]
- "The active version is in the canonical project structure; this folder retains the alternate legacy version by original source." — [[03-projects/Nightfall/90-Archive/Legacy Structure/README|README]]