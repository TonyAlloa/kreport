SELECT 
  tblTracks.IDX,
  tblDisks.Disk,
  tblTracks.Track,
  tblSongs.Song,
  tblArtists.Artist,
  tblTracks.IsVocal,
  tblSongs.IsFavSong,
  tblArtists.IsFavArtist,
  tblTracks.SingTrix,
  Singtrix_Presets.Preset_Name as "Preset Name",
  tblTags.Tags,
  tblTracks.DateAdded,
  tblTracks.IsNew,
  tblTracks.SIB,
  tblTracks.Corrupt,
  tblTracks.KTrack
FROM
  tblTracks
  INNER JOIN tblDisks ON (tblTracks.idxDisk = tblDisks.IDX)
  INNER JOIN tblSongs ON (tblTracks.idxSong = tblSongs.IDX)
  INNER JOIN tblArtists ON (tblTracks.idxArtist = tblArtists.IDX)
  INNER JOIN tblTags ON (tblTracks.idxTags = tblTags.IDX)
  INNER JOIN Singtrix_Presets ON (tblTracks.SingTrix = Singtrix_Presets.IDX)
