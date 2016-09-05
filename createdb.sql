DROP INDEX
IF EXISTS "main"."idx_disks";

DROP INDEX
IF EXISTS "main"."idx_mydisks";

DROP TABLE
IF EXISTS "main"."tblDisks";

CREATE TABLE "main"."tblDisks" (
	"IDX" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	"Disk" varchar (20),
	"MyName" varchar (20) COLLATE NOCASE,
	"DSCR" varchar (255) COLLATE NOCASE,
	"ManCode" varchar (25) COLLATE NOCASE,
	"DateAdded" varchar (12) DEFAULT '1990/01/01',
	"Tags" varchar (255) COLLATE NOCASE,
	"IsNew" boolean COLLATE BINARY DEFAULT 0,
	"SIB" boolean COLLATE BINARY DEFAULT 1,
	"CD" varchar (255) COLLATE NOCASE,
	"Front" varchar (255) COLLATE NOCASE 
	"Back" memo NOT NULL COLLATE NOCASE
);

CREATE INDEX "main"."idx_disks" ON "tblDisks" ("IDX" ASC, "Disk" ASC);

CREATE INDEX "main"."idx_mydisks" ON "tblDisks" ("IDX" ASC, "MyName" ASC);

DROP INDEX
IF EXISTS "main"."idx_all";

DROP INDEX
IF EXISTS "main"."idx_tracks";

DROP TABLE
IF EXISTS "main"."tblTracks";

CREATE TABLE "main"."tblTracks" (
	"IDX" integer PRIMARY KEY AUTOINCREMENT NOT NULL ON CONFLICT REPLACE,
	"Disk" varchar (20) NOT NULL,
	"Track" varchar (3) NOT NULL,
	"Song" varchar (50) NOT NULL COLLATE NOCASE,
	"Artist" varchar (50) NOT NULL COLLATE NOCASE,
	"Tags" varchar (255) NOT NULL COLLATE NOCASE,
	"SingTrix" integer DEFAULT 0,
	"DateAdded" varchar (12) NOT NULL COLLATE NOCASE DEFAULT '1990/01/01',
	"IsNew" boolean NOT NULL COLLATE BINARY DEFAULT FALSE,
	"IsFavSong" boolean NOT NULL COLLATE BINARY DEFAULT FALSE,
	"IsFavArtist" boolean NOT NULL COLLATE BINARY DEFAULT FALSE,
	"SIB" boolean NOT NULL COLLATE BINARY DEFAULT TRUE,
	"Corrupt" boolean NOT NULL COLLATE BINARY DEFAULT FALSE 
	"PATH" memo NOT NULL COLLATE NOCASE
);

CREATE INDEX "main"."idx_all" ON "tblTracks" (
	"Disk" ASC,
	"Track" ASC,
	"Song" ASC,
	"Artist" ASC
);

CREATE INDEX "main"."idx_tracks" ON "tblTracks" ("Disk" ASC, "Track" ASC);

-- reset the sqlite mantainence db's
UPDATE "main"."sqlite_sequence"
SET seq = 0
WHERE
	name = 'tblDisks';

UPDATE "main"."sqlite_sequence"
SET seq = 0
WHERE
	name = 'tblTracks';

