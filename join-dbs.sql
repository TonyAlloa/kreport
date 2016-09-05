SELECT 
  tblTracks.IDX,
  tblDisks.Disk,
  tblTracks.Track,
  tblSongs.Song,
  tblSongs.IsFavSong,
  tblArtists.Artist,    tblTracks.IsVocal,
  tblArtists.IsFavArtist,
  tblTracks.SingTrix,
  tblTracks.Tags,
  tblTracks.DateAdded,
  tblTracks.IsNew,
  tblTracks.SIB,
  tblTracks.Corrupt,
  tblTracks.PATH AS FPATH

FROM
  tblSongs
  INNER JOIN tblTracks ON (tblSongs.IDX = tblTracks.idxSong)
  INNER JOIN tblArtists ON (tblTracks.idxArtist = tblArtists.IDX)
  INNER JOIN tblDisks ON (tblTracks.idxDisk = tblDisks.IDX)
GROUP BY
  tblTracks.IDX,
  tblDisks.Disk,
  tblTracks.Track,
  tblSongs.Song,
  tblSongs.IsFavSong,
  tblArtists.Artist,
  tblArtists.IsFavArtist,
  tblTracks.SingTrix,
  tblTracks.Tags,
  tblTracks.DateAdded,
  tblTracks.IsNew,
  tblTracks.SIB,
  tblTracks.Corrupt,
  tblTracks.PATH,
  tblTracks.IsVocal
ORDER BY
  tblDisks.Disk,
  tblTracks.Track
