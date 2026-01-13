-- Remove all EXPANSION strategy conditions except NumCities
DELETE FROM StrategyConditions
WHERE StrategyType = 'LEGACY_PATH_STRATEGY_EXPANSION'
  AND ConditionFunction <> 'NumCities';

-- Redefine NumCities threshold to 1
UPDATE StrategyConditions
SET ThresholdValue = 1
WHERE StrategyType = 'LEGACY_PATH_STRATEGY_EXPANSION'
  AND ConditionFunction = 'NumCities';

INSERT INTO StrategyConditions
    (StrategyType, ConditionFunction, ThresholdValue)
VALUES
    ('LEGACY_PATH_STRATEGY_EXPANSION', 'NumMajorsMet', 2);