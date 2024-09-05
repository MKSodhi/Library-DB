-- 1 Listar Títulos e Autores de Livros Emprestados por Funcionários

SELECT 
    l.titulo,
    a.nome AS autor,
    f.nome AS funcionario
FROM Emprestimo e
JOIN Livro_Fisico lf 
	ON e.ObraFisica_id = lf.ObraFisica_id
JOIN Livro l 
	ON lf.isbn = l.isbn
JOIN Autor a 
	ON l.autor_id = a.autor_id
JOIN Funcionario f 
	ON e.funcionario_id = f.funcionario_id
ORDER BY e.data_emprestimo DESC;

-- 2 Verificar Quantidade de Empréstimos por Funcionário

SELECT 
    f.nome AS funcionario,
    COUNT(e.emprestimo_id) AS total_emprestimos
FROM Funcionario f
LEFT JOIN Emprestimo e 
	ON f.funcionario_id = e.funcionario_id
GROUP BY f.nome
ORDER BY total_emprestimos DESC;

-- 3 Listar Usuários com Empréstimos Ativos e Informações dos Livros

SELECT 
    u.nome AS usuario,
    l.titulo,
    e.data_emprestimo,
    e.prazo_entrega
FROM Usuario u
JOIN Emprestimo e 
    ON u.usuario_id = e.usuario_id
JOIN Livro_Fisico lf
	ON e.ObraFisica_id = lf.ObraFisica_id
JOIN Livro l 
	ON lf.isbn = l.isbn
WHERE 
	e.data_emprestimo IS NOT NULL AND
    e.prazo_entrega > CURDATE()
ORDER BY e.prazo_entrega ASC;

-- 4 Verificar Multas de Atraso por Empréstimo

SELECT 
    u.nome AS usuario,
    l.titulo,
    le.data_devolucao,
    le.multa_atraso
FROM Livro_Emprestado le
JOIN Emprestimo e 
    ON le.emprestimo_id = e.emprestimo_id
JOIN Usuario u 
    ON le.usuario_id = u.usuario_id
JOIN Livro_Fisico lf 
    ON le.ObraFisica_id = lf.ObraFisica_id
JOIN Livro l 
    ON lf.isbn = l.isbn
WHERE le.multa_atraso = 'SIM'
ORDER BY le.data_devolucao DESC;

-- 5 Listar Reservas Ativas e Informações de Contato do Usuário

SELECT 
    u.nome AS usuario,
    r.status_reserva,
    c.email,
    c.telefone,
    l.titulo
FROM Reserva r
JOIN Usuario u 
	ON r.usuario_id = u.usuario_id
JOIN Contato c 
	ON u.usuario_id = c.usuario_id
JOIN Livro_Fisico lf 
	ON r.ObraFisica_id = lf.ObraFisica_id
JOIN Livro l 
	ON lf.isbn = l.isbn
WHERE r.status_reserva = 'Reservado'
ORDER BY r.data_reserva DESC;


-- 6 Verificar Livros Não Devolvidos Dentro do Prazo

SELECT 
    u.nome AS usuario,
    l.titulo,
    e.prazo_entrega
FROM Emprestimo e
JOIN Usuario u 
	ON e.usuario_id = u.usuario_id
JOIN Livro_Fisico lf 
	ON e.ObraFisica_id = lf.ObraFisica_id
JOIN Livro l 
	ON lf.isbn = l.isbn
WHERE e.prazo_entrega < CURDATE() AND NOT EXISTS (
    SELECT 1 
    FROM Livro_Emprestado le 
    WHERE le.emprestimo_id = e.emprestimo_id
)
ORDER BY e.prazo_entrega ASC;


-- 7 Listar Quantidade de Livros Emprestados por Gênero

SELECT 
    l.genero,
    COUNT(e.emprestimo_id) AS total_emprestimos
FROM Livro l
JOIN Livro_Fisico lf 
	ON l.isbn = lf.isbn
LEFT JOIN Emprestimo e 
	ON lf.ObraFisica_id = e.ObraFisica_id
GROUP BY l.genero
ORDER BY total_emprestimos DESC;


-- 8 Listar Funcionários com Maior Número de Empréstimos e Reservas

SELECT 
    f.nome AS funcionario,
    COUNT(DISTINCT e.emprestimo_id) AS total_emprestimos,
    COUNT(DISTINCT r.reserva_id) AS total_reservas
FROM Funcionario f
LEFT JOIN Emprestimo e 
	ON f.funcionario_id = e.funcionario_id
LEFT JOIN Reserva r 
	ON f.funcionario_id = r.funcionario_id
GROUP BY f.nome
ORDER BY total_emprestimos DESC, total_reservas DESC;


-- 9 Verificar Histórico de Empréstimos e Devoluções de um Usuário

SELECT 
    u.nome AS usuario,
    l.titulo,
    e.data_emprestimo,
    le.data_devolucao,
    le.multa_atraso
FROM Usuario u
JOIN Emprestimo e 
	ON u.usuario_id = e.usuario_id
LEFT JOIN Livro_Emprestado le 
	ON e.emprestimo_id = le.emprestimo_id
JOIN Livro_Fisico lf 
	ON e.ObraFisica_id = lf.ObraFisica_id
JOIN Livro l
	ON lf.isbn = l.isbn
WHERE u.usuario_id = 1 -- Substitua pelo ID do usuário desejado
ORDER BY e.data_emprestimo DESC;


-- 10 Verificar Disponibilidade de Livros por Gênero

SELECT 
    l.genero,
    lf.qt_estoque - IFNULL(COUNT(e.emprestimo_id), 0) AS disponiveis
FROM Livro l
JOIN Livro_Fisico lf 
	ON l.isbn = lf.isbn
LEFT JOIN Emprestimo e 
	ON lf.ObraFisica_id = e.ObraFisica_id 
    AND e.prazo_entrega >= CURDATE()
GROUP BY l.genero, lf.qt_estoque
ORDER BY disponiveis DESC;


