-- Remove all EXPANSION strategy conditions except NumCities
DELETE FROM StrategyConditions
WHERE StrategyType = 'LEGACY_PATH_STRATEGY_IDEOLOGY'
  AND ConditionFunction <> 'NumCommanders';

-- Redefine NumCities threshold to 1
UPDATE StrategyConditions
SET ThresholdValue = 1
WHERE StrategyType = 'LEGACY_PATH_STRATEGY_IDEOLOGY'
  AND ConditionFunction = 'NumCommanders';