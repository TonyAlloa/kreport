DROP TABLE IF EXISTS "main"."_tblTracks_old";

ALTER TABLE "main"."tblTracks" RENAME TO "_tblTracks_old";

CREATE TABLE "main"."tblTracks" (
"IDX"        INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE,
"Disk"       varchar(20) NOT NULL COLLATE NOCASE,
"Track"      varchar(3) NOT NULL,
"Song"       varchar(50) NOT NULL COLLATE NOCASE,
"Artist"     varchar(50) NOT NULL COLLATE NOCASE,
"IsFavTrack" boolean NOT NULL ON CONFLICT IGNORE DEFAULT False, -- just adding a my fav tracks option
"DateAdded"  varchar(12) NOT NULL COLLATE NOCASE DEFAULT '1990/01/01',
"Tags"       varchar(255) NOT NULL COLLATE NOCASE,
"IsNew"      boolean NOT NULL ON CONFLICT IGNORE DEFAULT False,
"SIB"        boolean NOT NULL ON CONFLICT IGNORE DEFAULT True,
"Corrupt"    boolean NOT NULL ON CONFLICT IGNORE DEFAULT False,
"PATH"       varchar(255) NOT NULL COLLATE NOCASE 
);

INSERT INTO "main"."tblTracks" ("IDX", "Disk", "Track", "Song", "Artist", "IsNew", "DateAdded", "SIB", "Corrupt", "Tags", "PATH")
  SELECT "IDX", "Disk", "Track", "Song", "Artist", "IsNew", "DateAdded", "SIB", "Corrupt", "Tags", "PATH" FROM "_tblTracks_old";

-- DROP TABLE IF EXISTS "main"."_tblTracks_old";

UPDATE "main"."sqlite_sequence" SET seq = 0 WHERE name = 'tblTracks';