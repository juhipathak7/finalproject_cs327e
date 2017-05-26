CREATE TABLE Medium ( -- replicate (verbose)
    medium_id                  INTEGER,
    release_id             INTEGER NOT NULL, -- references release.id
    position            INTEGER NOT NULL,
    medium_format_id              INTEGER, -- references medium_format.id
    name                VARCHAR(2500) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0,
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    track_count         INTEGER NOT NULL DEFAULT 0
);