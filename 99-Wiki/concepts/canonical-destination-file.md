---
type: concept
created: 2026-09-18
updated: 2026-09-18
sources:
  - "[[sources/readme_132946]]"
tags:
aliases:
  - "canonical path"
  - "main project file"
generation_complete: true
---

# canonical destination file

## Definition

A canonical destination file is the officially designated, active version of a document within a project's hierarchy, acting as the primary reference point and target for finalized assets.

## Key Characteristics

- **Official Status**: Serves as the primary reference point within the [[entities/nightfall]] project.
- **Integrity Protection**: Acts as a safeguard during file migrations; if a canonical version is detected, the system forces incoming files to be diverted to a legacy archive.
- **Reference Target**: Represents the intended destination for all finalized assets to maintain a clean project structure.
- **Anti-Overwrite**: Prevents accidental data corruption by ensuring that conflicting versions are isolated rather than overwritten.

## Applications

- **Asset Management**: Used as the definitive target location for finalized project documentation and data.
- **Migration Orchestration**: Essential during [[one-shot migration]] processes to differentiate between current active files and older versions.
- **Version Control**: Functions as a system-level check to maintain consistency and prevent the duplication or accidental modification of established files.

## Related Concepts

- [[concepts/one-shot-migration|one-shot migration]]

## Related Entities

## Mentions in Source

- "These files were preserved during the one-shot Nightfall migration because a canonical destination file with the same path already existed." — [[03-projects/Nightfall/90-Archive/Legacy Structure/README|README]]