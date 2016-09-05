SELECT 
  tblTracks.IDX,
  tblDisks.Disk,
  tblTracks.Track,
  tblSongs.Song,
  tblArtists.Artist,
  tblSongs.IsFavSong,
  tblArtists.IsFavArtist,
  tblTracks.SingTrix,
  tblTracks.DateAdded,
  tblTracks.IsNew,
  tblTracks.SIB,
  tblTracks.Corrupt,
  tblTracks.KName,
  tblPaths.KPath,
  tblTags.Tag
FROM
  tblTracks
  INNER JOIN tblDisks ON (tblTracks.idxDisk = tblDisks.IDX)
  INNER JOIN tblSongs ON (tblTracks.idxSong = tblSongs.IDX)
  INNER JOIN tblArtists ON (tblTracks.idxArtist = tblArtists.IDX)
  INNER JOIN tblTags ON (tblTracks.idxTag = tblTags.IDX)
  AND (tblTracks.idxTags = tblTags.IDX)
  INNER JOIN tblPaths ON (tblTracks.idxPath = tblPaths.IDX)
