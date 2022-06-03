SELECT 
  AR.artista AS artista, AL.album AS album
FROM
  SpotifyClone.albuns AS AL
    INNER JOIN
  SpotifyClone.artistas AS AR ON AL.artista_id = AR.id
WHERE
  artista LIKE '%walter phoenix%';