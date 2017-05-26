CREATE TABLE Event_Type ( -- replicate
    event_type_id                  INTEGER,
    type_name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references event_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 varchar(2500) NOT NULL
);