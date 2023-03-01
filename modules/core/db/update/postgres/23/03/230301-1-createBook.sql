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
);