---
title: Decision — Daily EMA9 Trend Regime Filter
tags: [orbo, trading, decisions]
type: decision
date: 2026-04-20
status: decided
project: orbo-trading-bot
updated: 2026-07-08
related: ["[[decisions]]", "[[ORBO Trading Bot MOC]]"]
---

# Decision: Daily EMA9 Trend Regime Filter

**Context:** The previous EMA filter calculated on 5-minute bars was too noisy, resulting in frequent signal rejections (9/9 days blocked).

**Options considered:**
1. Relax EMA thresholds.
2. Use a longer intraday SMA (e.g., SMA200).
3. Resample to daily closes. *(Selected)*

**Decision:** Resample intraday 5m data to 1D closes and compute a 9-day EMA for trend direction filtering.

**Rationale:** Aligning with the daily institutional trend provides a much cleaner signal than chasing 5-minute noise, while still being fast enough to catch trend flips early.

**Consequences:** Requires the bot to maintain a 20-day historical lookback for stable indicator calculation.
