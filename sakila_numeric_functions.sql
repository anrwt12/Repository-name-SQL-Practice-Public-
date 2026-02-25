-- ============================================
-- 🔢 NUMERIC FUNCTIONS
-- ============================================

-- ABS() → Returns absolute (positive) value
SELECT ABS(-32) AS abs_value;


-- CEIL() → Returns smallest integer greater than or equal to number
SELECT CEIL(3.3) AS ceil_positive;
SELECT CEIL(-7.6) AS ceil_negative;


-- FLOOR() → Returns largest integer less than or equal to number
SELECT FLOOR(-7.6) AS floor_value;


-- ROUND() → Rounds number to given decimal places
SELECT ROUND(23.98802347, 2) AS rounded_value;


-- MOD() → Returns remainder
SELECT MOD(32, 10) AS remainder_value;


-- POWER() → Raises number to power
SELECT POWER(9, 2) AS power_value;


-- EXP() → Returns e raised to given power
SELECT EXP(3) AS exponential_value;