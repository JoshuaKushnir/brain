---
type: concept
created: 2026-09-18
updated: 2026-09-18
sources:
  - "[[sources/implementation-notes_1c2a2e]]"
tags:
aliases:
  - "Darkness tier"
  - "Exposure level"
generation_complete: true
---

# Darkness tier

## Definition

Darkness tier is a data metric used to categorize the intensity and severity of environmental darkness within the game world, serving as a foundational value for calculating player status effects.

## Key Characteristics

- Quantifies environmental light deprivation.
- Functions as an input variable for calculating player survival status.
- Directly interacts with [[Luminance]] values to determine the net environmental impact.
- Influences the activation of gameplay mechanics related to [[Dark Tolerance]].

## Applications

- Determines the scaling of negative status effects when a player is outside of safe zones.
- Influences the logic for [[Aspect kits]] that mitigate environmental hazards.
- Provides data feedback to the [[Health]] system to calculate damage or status decay over time.
- Controls the intensity of visual post-processing effects and UI alerts regarding environmental safety.

## Related Concepts

- [[concepts/environmental-exposure-rate|environmental-exposure-rate]]
- [[concepts/luminance|Luminance]]
- [[concepts/aspect-kits|Aspect kits]]

## Related Entities

- [[entities/health|Health]]

## Mentions in Source

- "Darkness tier and environmental exposure rate." — [[03-projects/Nightfall/06-Reference/Implementation Notes|Implementation Notes]]