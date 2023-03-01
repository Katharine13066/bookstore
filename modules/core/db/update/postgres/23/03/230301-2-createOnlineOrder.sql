alter table BOOKSTORE_ONLINE_ORDER add constraint FK_BOOKSTORE_ONLINE_ORDER_ON_CARD foreign key (CARD_ID) references WF_CARD(ID) on delete CASCADE;
