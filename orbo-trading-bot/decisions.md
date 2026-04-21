# Decisions - ORBO Trading Bot

## 2026-04-20
- **Multi-Strategy Pipeline**: Decided to run 4 non-correlated strategies in parallel to increase frequency while maintaining quality.
- **Daily Trend Filter**: Refactored EMA9 trend filter to use daily closes to avoid intraday noise.
- **Weighted Backtest P&L**: Implemented 50/50 weighting for partial exits in backtesting to accurately reflect the real-world execution model.
- **Strict Risk**: Re-aligned system to 1% max risk and 2.0 minimum R:R as mandatory constraints.
