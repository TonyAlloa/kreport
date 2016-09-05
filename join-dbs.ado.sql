SELECT 
  tblDisks.[Disk],
  tblDisks.MyName,
  tblDisks.ManCode,
  tblDisks.DSCR,
  tblTracks.Track,
  tblTracks.Song,
  tblTracks.Artist,
  tblTracks.IsNew,
  tblTracks.DateAdded,
  tblTracks.Tags,
  tblTracks.SIB,
  tblTracks.Corrupt,
  tblDisks.CD,
  tblDisks.Front,
  tblDisks.Back,
  tblTracks.PATH
FROM
  tblDisks
  INNER JOIN tblTracks ON (tblDisks.[Disk] = tblTracks.[Disk])
ORDER BY
  tblDisks.[Disk] ASC,
  tblTracks.Track ASC
