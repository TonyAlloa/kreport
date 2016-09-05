SELECT tblTracks.IDX,
       tblDisks.Disk,
       tblTracks.Track,
       tblSongs.Song,
       tblArtists.Artist,
       tblTracks.IsVocal,
       tblSongs.IsFavSong,
       tblArtists.IsFavArtist,
       tblTags.Tags,
       tblTracks.SingTrix,
       tblTracks.DateAdded,
       tblTracks.IsNew,
       tblTracks.SIB,
       tblTracks.Corrupt,
       tblTracks.KPath,
       tblTracks.KPath AS KTrack
FROM tblTracks
INNER JOIN tblDisks ON (tblTracks.idxDisk = tblDisks.IDX)
INNER JOIN tblSongs ON (tblTracks.idxSong = tblSongs.IDX)
INNER JOIN tblArtists ON (tblTracks.idxArtist = tblArtists.IDX)
INNER JOIN tblTags ON (tblTracks.idxTags = tblTags.IDX)
ORDER BY tblTracks.IDX
