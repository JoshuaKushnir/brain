# Active Work

## Open Decisions
```dataview
TABLE date, status FROM "Nightfall/decisions" WHERE status != "decided"
```

## Recent Sessions
```dataview
TABLE date, project FROM "*/session-logs" SORT date DESC LIMIT 10
```

## Research Notes
```dataview
LIST FROM "*/research" SORT file.mtime DESC LIMIT 5
```