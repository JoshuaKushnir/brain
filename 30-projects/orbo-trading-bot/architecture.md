---
title: ORBO Trading Bot — Architecture
tags: [orbo, trading, architecture]
type: note
created: 2026-04-20
updated: 2026-07-08
status: evergreen
related: ["[[ORBO Trading Bot MOC]]", "[[decisions]]"]
---

# Architecture — ORBO Trading Bot

Strategy-decoupled architecture where the `TradingEngine` coordinates between a `MarketDataFeed`, `RiskManager`, and multiple `IStrategy` implementations via a `StrategyAdapter`.

## Components
- **TradingEngine**: Core loop and pipeline coordinator.
- **RiskManager**: Centralized gate for order approval and kill-switch monitoring.
- **StrategyAdapter**: Bridges the `evaluate(bars)` legacy interface to the new `generate_order(ctx)` interface.
- **Pipeline**: Priority-based evaluation: ORBO -> Pullback -> VWAP -> PowerHour.
