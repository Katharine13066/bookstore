-- begin insert docKind for PurchaseOrder
CREATE OR REPLACE FUNCTION baseInsert()
RETURNS integer
AS $$
DECLARE
    cnt integer = 0;
BEGIN
    cnt = (select count(CATEGORY_ID) from DF_DOC_KIND where CATEGORY_ID = '01916b51-60bb-1fd3-7e54-1d07a9affed6');
    if (cnt = 0) then
        insert into SYS_CATEGORY (ID, NAME, ENTITY_TYPE, IS_DEFAULT, CREATE_TS, CREATED_BY, VERSION, DISCRIMINATOR)
        values ('01916b51-60bb-1fd3-7e54-1d07a9affed6', 'Заказ на покупку книги', 'bookstore$PurchaseOrder', false, now(), 'system', 1, 1);

        insert into DF_DOC_KIND (CATEGORY_ID, CREATE_TS, CREATED_BY, VERSION, DOC_TYPE_ID, NUMERATOR_ID,
                                 NUMERATOR_TYPE, CATEGORY_ATTRS_PLACE, TAB_NAME, PORTAL_PUBLISH_ALLOWED, DISABLE_ADD_PROCESS_ACTORS, CREATE_ONLY_BY_TEMPLATE, fields_xml)
        values ('01916b51-60bb-1fd3-7e54-1d07a9affed6', now(), 'system', 1, '9863e265-899a-4677-a462-858a0bca1083', 'a821cef3-33ac-4be2-a632-20f2c38720cb',
                1, 1, 'Доп. поля', false, false, false,
				'<?xml version="1.0" encoding="UTF-8"?>
<fields>
  <field name="date" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="docCategory" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="owner" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="department" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="comment" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="finishDatePlan" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="resolution" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="number" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="organization" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="parentCard" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="theme" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="author" inDocKind="true" required="false" visible="FALSE" signed="false" />
  <field name="book" inDocKind="true" required="TRUE" visible="true" signed="false" />
</fields>
'
				);
end if;
return 0;
END;
$$
LANGUAGE plpgsql;
^
select baseInsert();^
drop function if exists baseInsert();^
-- end insert docKind for PurchaseOrder
-- begin insert docKind for PurchaseOrder
CREATE OR REPLACE FUNCTION baseInsert()
RETURNS integer
AS $$
DECLARE
    cnt integer = 0;
BEGIN
    cnt = (select count(CATEGORY_ID) from DF_DOC_KIND where CATEGORY_ID = 'adb9d3e0-8610-3dd2-f9cc-5489e5efe821');
    if (cnt = 0) then
        insert into SYS_CATEGORY (ID, NAME, ENTITY_TYPE, IS_DEFAULT, CREATE_TS, CREATED_BY, VERSION, DISCRIMINATOR)
        values ('adb9d3e0-8610-3dd2-f9cc-5489e5efe821', 'Заказ на книги автора', 'bookstore$PurchaseOrder', false, now(), 'system', 1, 1);

        insert into DF_DOC_KIND (CATEGORY_ID, CREATE_TS, CREATED_BY, VERSION, DOC_TYPE_ID, NUMERATOR_ID,
                                 NUMERATOR_TYPE, CATEGORY_ATTRS_PLACE, TAB_NAME, PORTAL_PUBLISH_ALLOWED, DISABLE_ADD_PROCESS_ACTORS, CREATE_ONLY_BY_TEMPLATE, fields_xml)
        values ('adb9d3e0-8610-3dd2-f9cc-5489e5efe821', now(), 'system', 1, '9863e265-899a-4677-a462-858a0bca1083', 'a821cef3-33ac-4be2-a632-20f2c38720cb',
                1, 1, 'Доп. поля', false, false, false,
				'<?xml version="1.0" encoding="UTF-8"?>
<fields>
  <field name="date" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="docCategory" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="owner" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="department" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="comment" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="finishDatePlan" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="resolution" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="number" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="organization" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="parentCard" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="theme" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="author" inDocKind="true" required="TRUE" visible="TRUE" signed="false" />
  <field name="book" inDocKind="true" required="FALSE" visible="FALSE" signed="false" />
</fields>
'
				);
end if;
return 0;
END;
$$
LANGUAGE plpgsql;
^
select baseInsert();^
drop function if exists baseInsert();^
-- end insert docKind for PurchaseOrder
