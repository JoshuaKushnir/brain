# Architecture - ORBO Trading Bot

## Strategy-Acoupled architecture where the `TradingEngine` coordinates between a `MarketDataFeed`, `RiskManager`, and multiple `IStrategy` implementations via a `StrategyAdapter`.

### Components
- **TradingEngine**: Core loop and pipeline coordinator.
- **RiskManager**: Centralized gate for order approval and kill-switch monitoring.
- **StrategyAdapter**: Bridges the `evaluate(bars)` legacy interface to the new `generate_order(ctx)` interface.
- **Pipeline**: Priority-based evaluation: ORBO -> Pullback -> VWAP -> PowerHour.