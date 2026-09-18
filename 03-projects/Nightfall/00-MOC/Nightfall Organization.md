---
type: moc
project: Nightfall
status: active
created: 2026-09-17
---

# Nightfall Organization

This note is the stable navigation and organization guide for the Nightfall project vault. It intentionally adds a canonical structure without moving, renaming, overwriting, or deleting existing notes.

## Canonical Areas

- [[Nightfall Home]] — project home and entry point
- [[Canon MOC]] — world truths, cosmology, divinity, death, and naming
- [[World MOC]] — geography, regions, settlements, peoples, cultures, factions, and history
- [[Systems MOC]] — magic, Aspects, combat, progression, and other rules
- [[Gameplay MOC]] — player journey, features, UX, content, and technical gameplay design
- [[Design MOC]] — active specifications, feature concepts, decisions, and unresolved questions
- [[Reference MOC]] — glossary, implementation notes, research, external links, and session notes

## Folder Rules

| Folder | Put here | Do not put here |
| --- | --- | --- |
| `01-Canon` | Facts that are true in the setting | Implementation mechanics or feature drafts |
| `02-World` | Places, peoples, cultures, factions, and history | Abstract cosmology or system rules |
| `03-Systems` | How magic, death, combat, progression, and other systems work | Raw brainstorms without a defined rule |
| `04-Gameplay` | Player-facing loops, UX, content, and game features | Pure setting lore |
| `05-Design` | Active specs, decisions, questions, and concepts | Final canonical reference material |
| `06-Reference` | Glossaries, research, implementation notes, and sessions | Primary design source of truth |
| `90-Archive` | Superseded or preserved legacy material | Active notes |

## Migration Principles

1. Keep one canonical note per topic.
2. Move notes through Obsidian when possible so backlinks update.
3. Do not overwrite same-name notes; compare and merge them deliberately.
4. Mark retired notes with `status: superseded` and `superseded_by`.
5. Keep legacy material in `90-Archive/Legacy Structure` for one cleanup cycle before deletion.

## Current First-Pass Scope

The current organization pass creates destination folders and this guide only. Existing folders and notes remain untouched until their content has been reviewed. See [[Nightfall Migration Manifest]] for the planned move map and known conflicts.
