SELECT i.data[11] as titel, i.data[9] as sku, i.comment as kommentar
FROM inventory_import_rows as i
WHERE i.import_id = 97
AND (i.match_status = 'not_matched'
OR i.match_status='matched');

-- add "AND i.comment != ''" if you only want to filter commented inventory import rows
