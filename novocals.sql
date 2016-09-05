SELECT *
FROM
  tblTracks
WHERE
  disk = :disk AND
  ( 
  tblTracks.Artist NOT LIKE '%(Vocal%'
  OR
  tblTracks.Artist NOT LIKE '%(Back%'
  OR
  tblTracks.Artist NOT LIKE '%w/voc%'
  OR
  tblTracks.Artist NOT LIKE '%w-voc%'
  OR
  tblTracks.Artist NOT LIKE '%w voc%'
  )
ORDER BY
 Artist;
