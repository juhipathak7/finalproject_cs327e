CREATE TABLE Label ( -- replicate (verbose)
    label_id                 INTEGER,
    gid                 varchar(2500) NOT NULL,
    name                VARCHAR(2500) NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    label_code          INTEGER,
    label_type                INTEGER, -- references label_type.id
    area                INTEGER, -- references area.id
    comment             VARCHAR(65000) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0,
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    ended               BOOLEAN NOT NULL DEFAULT FALSE
);
