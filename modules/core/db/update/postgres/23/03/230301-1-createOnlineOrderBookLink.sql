create table BOOKSTORE_ONLINE_ORDER_BOOK_LINK (
    ONLINE_ORDER_ID uuid,
    BOOK_ID uuid,
    primary key (ONLINE_ORDER_ID, BOOK_ID)
);
