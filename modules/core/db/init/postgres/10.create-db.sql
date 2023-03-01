-- begin BOOKSTORE_AUTHOR
create table BOOKSTORE_AUTHOR (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    FULL_NAME varchar(150) not null,
    --
    primary key (ID)
)^
-- end BOOKSTORE_AUTHOR
-- begin BOOKSTORE_BOOK
create table BOOKSTORE_BOOK (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ISBN varchar(13) not null,
    NAME varchar(200) not null,
    PRICE decimal(19, 2),
    --
    primary key (ID)
)^
-- end BOOKSTORE_BOOK
-- begin BOOKSTORE_ONLINE_ORDER
create table BOOKSTORE_ONLINE_ORDER (
    CARD_ID uuid,
    --
    NUMBER_ varchar(50),
    DATE_ date,
    AMOUNT decimal(19, 2),
    --
    primary key (CARD_ID)
)^
-- end BOOKSTORE_ONLINE_ORDER
-- begin BOOKSTORE_PURCHASE_ORDER
create table BOOKSTORE_PURCHASE_ORDER (
    CARD_ID uuid,
    --
    AUTHOR_ID uuid,
    BOOK_ID uuid,
    --
    primary key (CARD_ID)
)^
-- end BOOKSTORE_PURCHASE_ORDER
-- begin BOOKSTORE_ONLINE_ORDER_BOOK_LINK
create table BOOKSTORE_ONLINE_ORDER_BOOK_LINK (
    ONLINE_ORDER_ID uuid,
    BOOK_ID uuid,
    primary key (ONLINE_ORDER_ID, BOOK_ID)
)^
-- end BOOKSTORE_ONLINE_ORDER_BOOK_LINK
-- begin BOOKSTORE_BOOK_AUTHOR_LINK
create table BOOKSTORE_BOOK_AUTHOR_LINK (
    BOOK_ID uuid,
    AUTHOR_ID uuid,
    primary key (BOOK_ID, AUTHOR_ID)
)^
-- end BOOKSTORE_BOOK_AUTHOR_LINK
