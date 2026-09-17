---
title: ORBO Trading Bot — Decisions Log
tags: [orbo, trading, decisions]
type: note
created: 2026-04-20
updated: 2026-07-08
status: growing
related: ["[[ORBO Trading Bot MOC]]", "[[architecture]]"]
---

# Decisions — ORBO Trading Bot

> Individual decision records: [[daily-ema-trend-filter]] · [[multi-strategy-pipeline]]

## 2026-04-20
- **Multi-Strategy Pipeline**: Run 4 non-correlated strategies in parallel to increase frequency while maintaining quality.
- **Daily Trend Filter**: Refactored EMA9 trend filter to use daily closes to avoid intraday noise.
- **Weighted Backtest P&L**: 50/50 weighting for partial exits in backtesting to reflect real-world execution.
- **Strict Risk**: 1% max risk and 2.0 minimum R:R as mandatory constraints.
