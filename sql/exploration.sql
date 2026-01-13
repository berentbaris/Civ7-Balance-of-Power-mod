-- Remove all EXPANSION strategy conditions except NumCities
DELETE FROM StrategyConditions
WHERE StrategyType = 'LEGACY_PATH_STRATEGY_DISTANT_SETTLEMENTS'
  AND ConditionFunction <> 'TopMilitaryPercent';

-- Redefine NumCities threshold to 1
UPDATE StrategyConditions
SET ThresholdValue = 100
WHERE StrategyType = 'LEGACY_PATH_STRATEGY_DISTANT_SETTLEMENTS'
  AND ConditionFunction = 'TopMilitaryPercent';