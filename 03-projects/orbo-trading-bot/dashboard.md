---
title: ORBO Trading Bot Dashboard
tags: [orbo, trading, dashboard]
type: dashboard
created: 2026-07-08
updated: 2026-07-08
related: ["[[ORBO Trading Bot MOC]]"]
---

# ORBO Trading Bot Dashboard

> Navigation: [[ORBO Trading Bot MOC]] · [[Home]]

## Open decisions

```base
filters:
  - property: type
    condition: is
    value: decision
  - property: status
    condition: is not
    value: decided
columns:
  - property: title
  - property: date
  - property: status
  - property: project
```

## Recent sessions

```base
filters:
  - property: type
    condition: is
    value: session-log
  - property: project
    condition: is
    value: orbo-trading-bot
sort:
  - property: date
    direction: descending
limit: 10
columns:
  - property: title
  - property: date
  - property: status
```

## Research

```base
filters:
  - property: tags
    condition: contains
    value: research
  - property: tags
    condition: contains
    value: orbo
columns:
  - property: title
  - property: updated
```
