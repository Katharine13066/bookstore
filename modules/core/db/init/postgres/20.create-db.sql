-- begin BOOKSTORE_ONLINE_ORDER
alter table BOOKSTORE_ONLINE_ORDER add constraint FK_BOOKSTORE_ONLINE_ORDER_ON_CARD foreign key (CARD_ID) references WF_CARD(ID) on delete CASCADE^
-- end BOOKSTORE_ONLINE_ORDER
-- begin BOOKSTORE_PURCHASE_ORDER
alter table BOOKSTORE_PURCHASE_ORDER add constraint FK_BOOKSTORE_PURCHASE_ORDER_ON_AUTHOR foreign key (AUTHOR_ID) references BOOKSTORE_AUTHOR(ID)^
alter table BOOKSTORE_PURCHASE_ORDER add constraint FK_BOOKSTORE_PURCHASE_ORDER_ON_BOOK foreign key (BOOK_ID) references BOOKSTORE_BOOK(ID)^
alter table BOOKSTORE_PURCHASE_ORDER add constraint FK_BOOKSTORE_PURCHASE_ORDER_ON_CARD foreign key (CARD_ID) references WF_CARD(ID) on delete CASCADE^
create index IDX_BOOKSTORE_PURCHASE_ORDER_ON_AUTHOR on BOOKSTORE_PURCHASE_ORDER (AUTHOR_ID)^
create index IDX_BOOKSTORE_PURCHASE_ORDER_ON_BOOK on BOOKSTORE_PURCHASE_ORDER (BOOK_ID)^
-- end BOOKSTORE_PURCHASE_ORDER
-- begin BOOKSTORE_ONLINE_ORDER_BOOK_LINK
alter table BOOKSTORE_ONLINE_ORDER_BOOK_LINK add constraint FK_ONLORDBOO_ON_ONLINE_ORDER foreign key (ONLINE_ORDER_ID) references BOOKSTORE_ONLINE_ORDER(CARD_ID)^
alter table BOOKSTORE_ONLINE_ORDER_BOOK_LINK add constraint FK_ONLORDBOO_ON_BOOK foreign key (BOOK_ID) references BOOKSTORE_BOOK(ID)^
-- end BOOKSTORE_ONLINE_ORDER_BOOK_LINK
-- begin BOOKSTORE_BOOK_AUTHOR_LINK
alter table BOOKSTORE_BOOK_AUTHOR_LINK add constraint FK_BOOAUT_ON_BOOK foreign key (BOOK_ID) references BOOKSTORE_BOOK(ID)^
alter table BOOKSTORE_BOOK_AUTHOR_LINK add constraint FK_BOOAUT_ON_AUTHOR foreign key (AUTHOR_ID) references BOOKSTORE_AUTHOR(ID)^
-- end BOOKSTORE_BOOK_AUTHOR_LINK
