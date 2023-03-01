-- begin insert docKind for PurchaseOrder
CREATE OR REPLACE FUNCTION baseInsert()
RETURNS integer
AS $$
DECLARE
    cnt integer = 0;
BEGIN
    cnt = (select count(CATEGORY_ID) from DF_DOC_KIND where CATEGORY_ID = '13c0e89f-3379-4839-a3d7-2dc8b93b7818');
    if (cnt = 0) then
        insert into SYS_CATEGORY (ID, NAME, ENTITY_TYPE, IS_DEFAULT, CREATE_TS, CREATED_BY, VERSION, DISCRIMINATOR)
        values ('13c0e89f-3379-4839-a3d7-2dc8b93b7818', 'Заказ на покупку', 'bookstore$PurchaseOrder', false, now(), 'system', 1, 1);

        insert into DF_DOC_KIND (CATEGORY_ID, CREATE_TS, CREATED_BY, VERSION, DOC_TYPE_ID, NUMERATOR_ID,
                                 NUMERATOR_TYPE, CATEGORY_ATTRS_PLACE, TAB_NAME, PORTAL_PUBLISH_ALLOWED, DISABLE_ADD_PROCESS_ACTORS, CREATE_ONLY_BY_TEMPLATE)
        values ('13c0e89f-3379-4839-a3d7-2dc8b93b7818', now(), 'system', 1, '9863e265-899a-4677-a462-858a0bca1083', 'a821cef3-33ac-4be2-a632-20f2c38720cb',
                1, 1, 'Доп. поля', false, false, false);
end if;
return 0;
END;
$$
LANGUAGE plpgsql;
^
select baseInsert();^
drop function if exists baseInsert();^
-- end insert docKind for PurchaseOrder
