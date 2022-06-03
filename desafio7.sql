SELECT 
  AR.artista AS artista,
  AL.album AS album,
  COUNT(UA.usuario_id) AS seguidores
FROM
  SpotifyClone.albuns AS AL
    INNER JOIN
  SpotifyClone.artistas AS AR ON AL.artista_id = AR.id
    INNER JOIN
  SpotifyClone.usuarios_artistas AS UA ON AL.artista_id = UA.artista_id
  GROUP BY artista, album
  ORDER BY seguidores DESC, artista ASC, album ASC;