UPDATE
  tblTracks
SET
  song = artist, 
  artist = song
--
-- WHERE
--  Individual Disks
--   disk = ''
-- OR
--  Individual Tracks
--   (disk = '' AND track = '')
--
-- Or a Range i.e. All Sunfly disks
--   (disk >= 'SF001' AND disk <= 'SF400')
--
-- Or a Range i.e. A Ranges from 1002 to 3999
--   (disk > 'SC1001' AND disk < 'SC4000')
;