# ORBO Trading Bot Dashboard

## Open Decisions
```dataview
TABLE date, status FROM "orbo-trading-bot/decisions" WHERE status != "decided"
```

## Recent Sessions
```dataview
TABLE date, project FROM "orbo-trading-bot/session-logs" SORT date DESC LIMIT 10
```

## Research Notes
```dataview
LIST FROM "orbo-trading-bot/research" SORT file.mtime DESC LIMIT 5
```
