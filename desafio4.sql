SELECT 
    U.usuario AS usuario,
    -- Depois de conversa com o Leonardo Araujo Silva, Turma 19, Tribo A,
    -- Mudei o sinal de ">" para "="
    IF(SUM(IF(YEAR(HR.data_reproducao) = 2021,
			1,
            0)) > 0,
        'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.usuarios AS U
        INNER JOIN
    SpotifyClone.historico_de_reproducao AS HR ON U.id = HR.usuario_id
GROUP BY usuario
ORDER BY usuario ASC
