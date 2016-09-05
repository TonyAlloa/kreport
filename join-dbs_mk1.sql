SELECT 
  tblTracks.IDX,
  tblDisks.Disk,
  tblTracks.Track,
  tblSongs.Song,
  tblArtists.Artist,
  tblTracks.IsVocal,
  tblTags.Tag as Tags,
  tblSongs.IsFavSong,
  tblArtists.IsFavArtist,
  tblTracks.SingTrix,
  tblTracks.SIB,
  tblTracks.IsNew,
  tblTracks.DateAdded,
  tblTracks.Corrupt,
  tblTracks.KName,
  tblPaths.KPath
FROM
  tblTracks
  INNER JOIN tblDisks ON (tblTracks.idxDisk = tblDisks.IDX)
  INNER JOIN tblSongs ON (tblTracks.idxSong = tblSongs.IDX)
  INNER JOIN tblArtists ON (tblTracks.idxArtist = tblArtists.IDX)
  INNER JOIN tblTags ON (tblTracks.idxTags = tblTags.IDX)
  INNER JOIN tblPaths ON (tblTracks.idxPath = tblPaths.IDX)
ORDER BY
  tblDisks.Disk,
  tblTracks.Track
