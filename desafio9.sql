SELECT 
  COUNT(*) AS quantidade_musicas_no_historico
FROM
  SpotifyClone.historico_de_reproducao AS HR
    INNER JOIN
  SpotifyClone.usuarios AS U ON HR.usuario_id = U.id
WHERE
  U.usuario LIKE '%bill%';
