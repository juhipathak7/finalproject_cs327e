CREATE TABLE event_type ( -- replicate
    id                  SERIAL,
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references event_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);