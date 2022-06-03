SELECT 
  C.cancao AS cancao, COUNT(HR.cancao_id) AS reproducoes
FROM
  SpotifyClone.cancoes AS C
    INNER JOIN
  SpotifyClone.historico_de_reproducao AS HR ON C.id = HR.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;
