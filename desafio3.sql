SELECT 
  U.usuario AS usuario,
  COUNT(C.cancao) AS qtde_musicas_ouvidas,
  ROUND((SUM(C.duracao_segundos) / 60), 2) AS total_minutos
FROM
  SpotifyClone.historico_de_reproducao AS HR
    INNER JOIN
  SpotifyClone.usuarios AS U ON HR.usuario_id = U.id
    INNER JOIN
  SpotifyClone.cancoes AS C ON HR.cancao_id = C.id
GROUP BY U.usuario
ORDER BY U.usuario ASC;
