-- 
-- Here it is assumed that the last entry is the correct one, 
-- so we delete all preceding entries with the same disk name
-- 
DELETE FROM tblDisks WHERE rowid NOT IN
 (SELECT MAX(rowid) FROM tblDisks GROUP BY disk,myname);

DELETE FROM tblTracks WHERE rowid NOT IN
 (SELECT MAX(rowid) FROM tblTracks GROUP BY disk,track);
