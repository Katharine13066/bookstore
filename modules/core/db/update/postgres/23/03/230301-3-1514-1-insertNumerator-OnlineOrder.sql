-- begin insert default numerator for OnlineOrder
CREATE OR REPLACE FUNCTION baseInsert()
RETURNS integer
AS $$
DECLARE
    cnt integer = 0;
BEGIN
cnt = (select count(id) from DF_NUMERATOR where CODE = 'OnlineOrderNumerator' and delete_ts is null);
if(cnt = 0) then
    INSERT INTO DF_NUMERATOR (ID, CREATE_TS, CREATED_BY, VERSION, CODE, NUMERATOR_FORMAT, SCRIPT_ENABLED,
                              PERIODICITY, NUMBER_INITIAL_VALUE, LOC_NAME)
    VALUES ('922bbca2-c177-4a86-889e-14e9cc037c79', now(), 'system', 1, 'OnlineOrderNumerator', 'OO[number]', FALSE, 'Y', 1,
            '{"captionWithLanguageList":[{"language":"ru","caption":"Интернет заказ"},{"language":"en","caption":"Online order"}]}'
    );
end if;

return 0;
END;
$$
LANGUAGE plpgsql;
^

select baseInsert()^
drop function if exists baseInsert()^
-- end insert default numerator for OnlineOrder
