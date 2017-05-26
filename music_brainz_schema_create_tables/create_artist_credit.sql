CREATE TABLE Artist_Credit ( -- replicate
    artist_credit_id                  INTEGER,
    name                VARCHAR(2500) NOT NULL,
    artist_count        SMALLINT NOT NULL,
    ref_count           INTEGER DEFAULT 0,
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);