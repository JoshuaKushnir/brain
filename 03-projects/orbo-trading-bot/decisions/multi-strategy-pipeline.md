---
title: Decision — Multi-Strategy Priority Pipeline
tags: [orbo, trading, decisions]
type: decision
date: 2026-04-20
status: decided
project: orbo-trading-bot
updated: 2026-07-08
related: ["[[decisions]]", "[[architecture]]", "[[ORBO Trading Bot MOC]]"]
---

# Decision: Multi-Strategy Priority Pipeline

**Context:** The single ORBO strategy had low trade frequency and was susceptible to being blocked by a single trend filter. Needed to increase opportunity while maintaining strict risk controls.

**Options considered:**
1. Stick to single ORBO with relaxed filters.
2. Multiple independent bots.
3. Priority-based pipeline. *(Selected)*

**Decision:** Implement a prioritized pipeline (ORBO → Pullback → VWAP → PowerHour) where the first strategy to generate a signal per symbol wins the bar.

**Rationale:** Maximizes capital efficiency (one position at a time) while exposing the bot to multiple high-probability setups throughout the trading day.

**Consequences:** Increased system complexity; requires a robust `TradingEngine` to coordinate between multiple strategy states.
