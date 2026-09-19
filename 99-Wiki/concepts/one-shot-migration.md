---
type: concept
created: 2026-09-18
updated: 2026-09-18
sources:
  - "[[sources/readme_132946]]"
tags:
aliases:
  - "one-time migration"
  - "bulk migration"
generation_complete: true
---

# one-shot migration

## Definition

The one-shot migration is a singular, comprehensive transfer process designed to relocate files from legacy environments into a new, unified system structure.

## Key Characteristics

- **Batch Processing**: Operates as a high-speed, bulk transfer of all source data in a single execution.
- **Automation**: Relies on automated scripts to traverse and import file hierarchies.
- **Collision Sensitivity**: Frequently encounters path conflicts due to overlapping directory structures between the source and target environments.
- **Contingency Planning**: Requires secondary processes, such as the creation of legacy archives, to handle files that cannot be safely overwritten or merged into the destination.

## Applications

- Consolidation of disparate data sources into a centralized project structure.
- Large-scale system restructuring where minimizing downtime is prioritized over incremental syncing.
- Migrating legacy project data into modernized architecture, such as [[entities/nightfall]].

## Related Concepts

- [[concepts/legacy-structure|Legacy Structure]]
- [[concepts/canonical-destination-file|canonical destination file]]

## Related Entities

- [[entities/nightfall|Nightfall]]

## Mentions in Source

- "These files were preserved during the one-shot Nightfall migration because a canonical destination file with the same path already existed." — [[03-projects/Nightfall/90-Archive/Legacy Structure/README|README]]