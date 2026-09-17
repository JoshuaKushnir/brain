---
title: ORBO Trading Bot MOC
tags: [orbo, trading, moc]
type: moc
created: 2026-07-08
updated: 2026-07-08
related: ["[[Home]]"]
---

# ORBO Trading Bot — Map of Content

Algorithmic trading bot. Priority-based multi-strategy pipeline targeting IWM, SPY, QQQ.

## Core notes

- [[architecture]] — system design, components, strategy pipeline
- [[decisions]] — decisions log index

## Decision records

- [[daily-ema-trend-filter]] — switched EMA filter to daily closes (decided 2026-04-20)
- [[multi-strategy-pipeline]] — 4-strategy priority pipeline (decided 2026-04-20)

## Sessions

- [[latest]] — most recent session logs

## Research

- [[IWM Day Trading  Strategies to Boost Win Rate & Trade Frequency]]

## Dashboard

- [[ORBO Dashboard]]

## Status
- Paper trading IWM
- Multi-strategy pipeline live (ORBO → Pullback → VWAP → PowerHour)
- Next: remove StrategyAdapter bridge, port strategies to IStrategy directly
