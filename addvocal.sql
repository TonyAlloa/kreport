SELECT DISTINCT (
		SELECT
			CASE
		WHEN tblTracks.IsVocal = 'TRUE' THEN
			5000 + tblTracks.idxArtist
		ELSE
			tblTracks.idxArtist
		END
	) AS idxArtist,
	(
		SELECT
			CASE
		WHEN tblTracks.IsVocal = 'TRUE' THEN
			tblArtists.Artist || ' (Vocal)'
		ELSE
			tblArtists.Artist
		END
	) AS Artist
FROM
	tblTracks
INNER JOIN tblArtists ON (
	tblTracks.idxArtist = tblArtists.IDX
)
