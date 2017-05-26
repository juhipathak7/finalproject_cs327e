CREATE TABLE Event ( -- replicate (verbose)
    event_id                  INTEGER,
    gid                 varchar(65000) NOT NULL,
    event_name                VARCHAR(65000) NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    time                VARCHAR(2500),
    event_type_id                INTEGER, -- references event_type.id
    cancelled           BOOLEAN NOT NULL DEFAULT FALSE,
    setlist             VARCHAR(65000),
    comment             VARCHAR(65000) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0,
    last_updated        VARCHAR(2500),
    ended               BOOLEAN NOT NULL DEFAULT FALSE
);