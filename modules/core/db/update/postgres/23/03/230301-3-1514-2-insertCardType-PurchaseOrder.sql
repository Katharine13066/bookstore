-- begin insert cardType for PurchaseOrder
insert into TS_CARD_TYPE (ID, CREATE_TS, CREATED_BY, NAME, DISCRIMINATOR, FIELDS_XML)
       values ('9863e265-899a-4677-a462-858a0bca1083', now(), 'system', 'bookstore$PurchaseOrder', '2100', '<?xml version="1.0" encoding="UTF-8"?>
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
  <field name="author" inDocKind="true" required="false" visible="true" signed="false" />
  <field name="book" inDocKind="true" required="false" visible="true" signed="false" />
</fields>
')^
-- end insert cardType for PurchaseOrder
