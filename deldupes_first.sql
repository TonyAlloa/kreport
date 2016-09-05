-- 
-- Here it is assumed that the first entry is the correct one, 
-- so we delete all following entries with the same disk name
-- 
DELETE FROM tblDisks WHERE rowid NOT IN
 (SELECT MIN(rowid) FROM tblDisks GROUP BY disk,myname);

DELETE FROM tblTracks WHERE rowid NOT IN
 (SELECT MIN(rowid) FROM tblTracks GROUP BY disk,track);
