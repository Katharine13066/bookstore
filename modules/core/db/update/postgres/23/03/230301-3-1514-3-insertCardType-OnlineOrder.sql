-- begin insert cardType for OnlineOrder
insert into TS_CARD_TYPE (ID, CREATE_TS, CREATED_BY, NAME, DISCRIMINATOR, FIELDS_XML)
       values ('7eaf0bba-689c-45fe-9af0-dec21ec27b91', now(), 'system', 'bookstore$OnlineOrder', '2000', '<?xml version="1.0" encoding="UTF-8"?>
<fields>
  <field name="number" inDocKind="false" required="false" visible="true" signed="false" />
  <field name="date" inDocKind="false" required="false" visible="true" signed="false" />
  <field name="amount" inDocKind="false" required="false" visible="true" signed="false" />
</fields>
')^
-- end insert cardType for OnlineOrder
