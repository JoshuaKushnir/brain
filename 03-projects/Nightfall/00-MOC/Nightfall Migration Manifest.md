---
type: project-maintenance
project: Nightfall
status: active
created: 2026-09-17
---

# Nightfall Migration Manifest

This manifest records the transition from the overlapping legacy directory structure to the canonical Nightfall structure. No legacy content is moved, overwritten, or deleted by this first-pass commit.

## Canonical Structure

```text
00-MOC/
01-Canon/
02-World/
03-Systems/
04-Gameplay/
05-Design/
06-Reference/
90-Archive/
```

## Legacy Move Map

| Legacy location | Planned destination | Status | Notes |
| --- | --- | --- | --- |
| `00 Index/` | `00-MOC/` | Review required | Merge navigation notes; retain `00-MOC` as canonical |
| `01 Cosmology/` | `01-Canon/Cosmology/` | Ready to move | Merge with contents of `01-Cosmology/` note by note |
| `01-Cosmology/` | `01-Canon/Cosmology/` | Ready to move | Existing cosmology notes: Darkness, Eidolon, Pale Wound |
| `01-Canon/` | `01-Canon/` | Keep | Canon Principles, Glossary, Naming Canon, and naming ideas remain canonical |
| `02 Geography/` | `02-World/Geography/` | Review required | Contains many place notes and a POI plan |
| `02-Geography/` | `02-World/Planning/` | Review required | Contains a second POI Map Plan |
| `02-World/` | `02-World/` | Keep | Canonical world parent; later add Regions and Geography children |
| `03 Magic/` and `04-Magic/` | `03-Systems/Magic/` | Review required | Compare note sets before moving |
| `03-Divinity/` and `04 Gods/` | `01-Canon/Divinity/` and/or `03-Systems/Divinity Mechanics/` | Review required | Split lore from mechanics deliberately |
| `05 Peoples/`, `06 Cultures/`, `07 Factions/`, `07-History/` | `02-World/` | Ready to classify | Move under matching World subfolders |
| `06-Death/` and `08 Death/` | `01-Canon/Death & Afterlife/` and/or `03-Systems/Death Systems/` | Review required | Split setting lore from gameplay/system rules |
| `05-Systems/` | `03-Systems/` | Review required | Assess before merge |
| `09 Gameplay/` | `04-Gameplay/` | Ready to classify | Move player-facing notes |
| `99-Design/` | `05-Design/` | Ready to classify | Move active specs and concepts |
| `10 Reference/` | `06-Reference/` | Review required | Separate decisions, glossary, implementation, and sessions |
| `10-Reference/` | `06-Reference/Session Notes/` | Review required | Contains a second session note with the same filename |

## Known Conflicts

| Topic | Existing files | Resolution rule |
| --- | --- | --- |
| Navigation | `00 Index/Nightfall.md` and `00-MOC/Nightfall Home.md` | Compare purpose and retain one canonical entry note; archive the other with a redirect link |
| Naming | `00 Index/Naming Canon.md` and `01-Canon/Naming Canon.md` | Compare content before selecting canonical version |
| Geography plan | `02 Geography/POI Map Plan.md` and `02-Geography/POI Map Plan.md` | Compare contents; merge manually into one canonical plan |
| Reference session | `10 Reference/Session Notes 2026-09-17.md` and `10-Reference/Session Notes 2026-09-17.md` | Preserve both until content is compared, then merge or distinguish by source |
| World entities | Several names appear in both `02 Geography/` and `02-World/` | Review each pair, choose one canonical note, and archive/redirect the older or thinner version |

## Batch Order

1. Navigation: `00 Index` → `00-MOC`
2. Reference: `10 Reference` and `10-Reference` → `06-Reference`
3. Cosmology: `01 Cosmology` and `01-Cosmology` → `01-Canon/Cosmology`
4. World: geography and world duplicates → `02-World`
5. Systems, gameplay, and design → their canonical roots
6. Archive legacy folders only after a backlink and duplicate review
