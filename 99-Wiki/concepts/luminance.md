---
type: concept
created: 2026-09-18
updated: 2026-09-18
sources:
  - "[[sources/implementation-notes_1c2a2e]]"
tags:
aliases:
  - "Light level"
generation_complete: true
---

# Luminance

## Definition

Luminance is a foundational game resource representing the player's exposure to light or their innate capacity to generate it, serving as a primary metric for environmental navigation and survival.

## Key Characteristics

- Functions as a core resource alongside [[Health]], [[Mana]], and [[Posture]].
- Determines the player's interaction state within darkness-based game systems.
- Requires constant monitoring in relation to [[Dark Tolerance]].
- Impacts the severity of environmental effects based on current light exposure levels.

## Applications

- Managing risk-reward scenarios when navigating low-light or light-sensitive areas.
- Balancing resource consumption to maintain safety thresholds against darkness.
- Influencing combat and stealth mechanics by modifying visibility and status effects.

## Related Concepts

- [[concepts/darkness-tier|Darkness tier]]
- [[concepts/dark-tolerance|Dark Tolerance]]

## Related Entities

- [[entities/health|Health]]

## Mentions in Source

- "The lore expects separate Health, Mana, Posture, and Luminance resources; distinct Downed, Carried, Grip, and Execution states; and five Aspect kits." — [[03-projects/Nightfall/06-Reference/Implementation Notes|Implementation Notes]]
- "Player Dark Tolerance and current Luminance." — [[03-projects/Nightfall/06-Reference/Implementation Notes|Implementation Notes]]