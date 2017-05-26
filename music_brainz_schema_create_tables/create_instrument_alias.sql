CREATE TABLE Instrument_Alias ( -- replicate (verbose)
    instrument_alias_id                  INTEGER, --PK
    instrument_id          INTEGER NOT NULL, -- references instrument.id
    name                VARCHAR NOT NULL,
    locale              TEXT,
    edits_pending       INTEGER NOT NULL DEFAULT 0,
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    type                INTEGER, -- references instrument_alias_type.id
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    primary_for_locale  BOOLEAN NOT NULL DEFAULT false,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
);