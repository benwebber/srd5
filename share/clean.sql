-- Clean imported CSV data.
BEGIN TRANSACTION;
-- Assign null values.
UPDATE spells SET materials = NULL WHERE materials = "";
-- Clean boolean values.
UPDATE
  spells
SET
  cantrip = CASE cantrip WHEN "True" THEN 1 ELSE 0 END,
  concentration = CASE concentration WHEN "True" THEN 1 ELSE 0 END,
  material = CASE material WHEN "True" THEN 1 ELSE 0 END,
  ritual = CASE ritual WHEN "True" THEN 1 ELSE 0 END,
  somatic = CASE somatic WHEN "True" THEN 1 ELSE 0 END,
  verbal = CASE verbal WHEN "True" THEN 1 ELSE 0 END;
COMMIT;
