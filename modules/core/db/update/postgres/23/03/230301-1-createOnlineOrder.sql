create table BOOKSTORE_ONLINE_ORDER (
    CARD_ID uuid,
    --
    NUMBER_ varchar(50),
    DATE_ date,
    AMOUNT decimal(19, 2),
    --
    primary key (CARD_ID)
);