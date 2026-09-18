---
type: concept
created: 2026-09-18
updated: 2026-09-18
sources:
  - "[[sources/implementation-notes_1c2a2e]]"
tags:
aliases:
  - "Balance"
  - "Stance"
  - "Defensive Integrity"
generation_complete: true
---

# Posture

## Definition

Posture is a core resource system representing a character's physical balance or defensive integrity. It functions as a primary indicator of a character's ability to withstand pressure or incoming attacks, serving as a distinct alternative to standard life-pool resources.

## Key Characteristics

- **Dynamic Stability**: Represents the capacity to maintain footing and defensive form under duress.
- **Resource Management**: Unlike static attributes, it fluctuates based on combat interaction, requiring active player attention to recover or prevent depletion.
- **Vulnerability Trigger**: Depletion of posture typically leads to a "broken" or "staggered" state, exposing the character to critical damage.
- **Resource Differentiation**: Operates independently from [[Health]] and [[Mana]], requiring a specific tactical approach to maximize efficiency.

## Applications

- **Combat Mechanics**: Used to balance high-intensity encounters by punishing overly defensive playstyles or rewarding aggressive, rhythmic combat.
- **Defense Simulation**: Serves as a gauge for parry-based systems where blocking attacks consumes posture rather than health.
- **Encumbrance Systems**: Can be used to model the impact of heavy equipment or environmental hazards on a character's physical composure.

## Related Concepts

- [[concepts/mana|Mana]]
- [[concepts/luminance|Luminance]]

## Related Entities

- [[entities/health|Health]]

## Mentions in Source

- "The lore expects separate Health, Mana, Posture, and Luminance resources; distinct Downed, Carried, Grip, and Execution states; and five Aspect kits." — [[03-projects/Nightfall/06-Reference/Implementation Notes|Implementation Notes]]