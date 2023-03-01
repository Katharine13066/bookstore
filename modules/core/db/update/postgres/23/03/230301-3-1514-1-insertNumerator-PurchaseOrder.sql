-- begin insert default numerator for PurchaseOrder
CREATE OR REPLACE FUNCTION baseInsert()
RETURNS integer
AS $$
DECLARE
    cnt integer = 0;
BEGIN
cnt = (select count(id) from DF_NUMERATOR where CODE = 'PurchaseOrderNumerator' and delete_ts is null);
if(cnt = 0) then
    INSERT INTO DF_NUMERATOR (ID, CREATE_TS, CREATED_BY, VERSION, CODE, NUMERATOR_FORMAT, SCRIPT_ENABLED,
                              PERIODICITY, NUMBER_INITIAL_VALUE, LOC_NAME)
    VALUES ('a821cef3-33ac-4be2-a632-20f2c38720cb', now(), 'system', 1, 'PurchaseOrderNumerator', '[number]', FALSE, 'Y', 1,
            '{"captionWithLanguageList":[{"language":"ru","caption":"Заказ на покупку"},{"language":"en","caption":"Purchase order"}]}'
    );
end if;

return 0;
END;
$$
LANGUAGE plpgsql;
^

select baseInsert()^
drop function if exists baseInsert()^
-- end insert default numerator for PurchaseOrder
