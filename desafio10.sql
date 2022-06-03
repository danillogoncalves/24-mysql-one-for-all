SELECT 
  C.cancao AS nome, COUNT(HR.data_reproducao) AS reproducoes
FROM
  SpotifyClone.historico_de_reproducao AS HR
    INNER JOIN
  SpotifyClone.usuarios AS U ON HR.usuario_id = U.id
    INNER JOIN
  SpotifyClone.cancoes AS C ON HR.cancao_id = C.id
WHERE
  U.plano_id = 1 OR U.plano_id = 4
GROUP BY nome
ORDER BY nome ASC;