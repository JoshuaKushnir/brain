---
title: "POI Map Plan"
tags: [geography, map, draft]
status: draft
---
# POI Map Plan (Organic Boundaries)

Builds on the confirmed Ring order (Timeline.md, Naming Canon): Center = [[Vigil]]/[[The Rise]], First = [[Hearth]], Second = [[Gloam]], Third = [[Murk]], Fourth = [[Night]], Fifth = [[The Rim]], Beyond = [[The Dark]].

**Flag for game repo:** the shipped Nightfall codebase currently labels Ring 4 "Gloam" — this contradicts the vault, where Gloam is Ring 2 and Night is Ring 4. Needs correcting in `HUDThemeV2.ZoneNames` / `DebugInput.lua` before those rings are built further.

## Design Principle: No Clean Lines

Darkness is vertical as well as radial (caves under Hearth can roll Murk-level Darkness; a Rim peak can briefly be as safe as Hearth). Ring boundaries should be irregular bleed zones drawn by terrain, not radius circles — [[Cinderwake]] already crosses Murk/Night and [[The Reaches]] already sit above Gloam/Murk. Treat that as the template.

## Ring 0 — Vigil / The Rise
- **Vigil** — capital, elevation-stratified
- **The Rise summit / Dawn Anchor**
- Connector down: **The Steps** (Undertide mirror)

## Ring 1 — Hearth
- **Hearth proper**, **The Gardens**, **The Quays**, **The Fen**
- Connector out: proposed farmland-gradient hamlet fading into Gloam (not yet canon)

## Ring 2 — Gloam
- **Gloam proper** — last reliable ground-level sunlight
- **The Reaches** (confirmed Ring 2/3 connector, floating above Gloam and Murk)
- **Meridian** *(inferred placement, not vault-confirmed — verify)*

## Ring 3 — Murk
- **Murk proper**, **Redstep** (confirmed: iron-rich plains in Murk), **Cinderwake** (confirmed Ring 3/4 connector)
- **Nacre / Mournwood** *(inferred placement, not vault-confirmed — verify)*
- Proposed: a **Blackwake** waystation (raider faction confirmed to operate Murk through the Rim)

## Ring 4 — Night
- **Night proper**, Cinderwake's northern half
- **Ironroot** *(inferred placement, not vault-confirmed — verify)*
- Proposed: chain of abandoned **Watch checkpoint** ruins leading to the Rim

## Ring 5 — The Rim
- **The Rim proper**, Blackwake's outer raiding grounds
- Proposed: drifting boundary cairns (consistent with Rim death customs — graves may move)

## Beyond — The Dark
By definition, no fixed major POIs. Anything here should be temporary or narratively singular.

## The Undertide Mirror (primary connective layer)
Per The Fall: Vigil/Rise→The Steps, Hearth→The Shore, Gloam→The Shallows, Murk→The Drowned Roads, Night→The Deep, The Rim→The Nameless Deep, The Dark→Unpredictable. Every surface POI should have a matching Undertide drop-point directly beneath it — this doubles the map without inventing new horizontal landmass.

## Open Items
- Confirm or revise inferred placements: Meridian, Nacre, Mournwood, Ironroot.
- Decide whether proposed new POIs (hamlet, Blackwake waystation, Watch ruins, drifting cairns) become vault canon or stay game-only set dressing.
- Fix the Gloam/Night ring-number mismatch in the game repo.

See also [[The Rings]], [[World Shape]], [[Map of the Rings]], [[The Fall]].
