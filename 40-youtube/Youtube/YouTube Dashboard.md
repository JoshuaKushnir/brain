---
title: YouTube Dashboard
tags: [youtube, dashboard]
type: dashboard
created: 2026-07-08
updated: 2026-07-08
related: ["[[YouTube MOC]]"]
---

# YouTube Dashboard

> Navigation: [[YouTube MOC]] · [[Home]]

## Active content ideas

```base
filters:
  - property: type
    condition: is
    value: ideas
  - property: status
    condition: is
    value: active
sort:
  - property: created
    direction: descending
columns:
  - property: title
  - property: created
  - property: status
```

## Analytics history

```base
filters:
  - property: type
    condition: is
    value: analytics
sort:
  - property: created
    direction: descending
columns:
  - property: title
  - property: period
  - property: created
```
