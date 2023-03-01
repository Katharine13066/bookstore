create table BOOKSTORE_BOOK_AUTHOR_LINK (
    BOOK_ID uuid,
    AUTHOR_ID uuid,
    primary key (BOOK_ID, AUTHOR_ID)
);
