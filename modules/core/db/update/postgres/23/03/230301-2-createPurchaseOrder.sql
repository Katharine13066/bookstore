alter table BOOKSTORE_PURCHASE_ORDER add constraint FK_BOOKSTORE_PURCHASE_ORDER_ON_AUTHOR foreign key (AUTHOR_ID) references BOOKSTORE_AUTHOR(ID);
alter table BOOKSTORE_PURCHASE_ORDER add constraint FK_BOOKSTORE_PURCHASE_ORDER_ON_BOOK foreign key (BOOK_ID) references BOOKSTORE_BOOK(ID);
alter table BOOKSTORE_PURCHASE_ORDER add constraint FK_BOOKSTORE_PURCHASE_ORDER_ON_CARD foreign key (CARD_ID) references WF_CARD(ID) on delete CASCADE;
create index IDX_BOOKSTORE_PURCHASE_ORDER_ON_AUTHOR on BOOKSTORE_PURCHASE_ORDER (AUTHOR_ID);
create index IDX_BOOKSTORE_PURCHASE_ORDER_ON_BOOK on BOOKSTORE_PURCHASE_ORDER (BOOK_ID);
