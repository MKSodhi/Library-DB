INSERT INTO
    Departamento (nome)
VALUES
    ('Diretoria'),
    ('Gerência'),
    ('Financeiro'),
    ('Contábil'),
    ('TI'),
    ('Recursos Humanos'),
    ('Recepção');

INSERT INTO
    Cargo (departamento_id, nome, salario)
VALUES
    (1, 'Diretor', 15320.00),
    (2, 'Gerente', 10120.00),
    (3, 'Coordenador de Finanças', 7000.00),
    (4, 'Coordenador Contábil', 7000.00),
    (6, 'Coordenador de RH', 6000.00),
    (5, 'Coordenador de TI', 7000.00),
    (5, 'Analista de Sistemas', 3000.00),
    (5, 'Analista de Suporte', 2500.45),
    (3, 'Auxiliar Financeiro', 1850.00),
    (4, 'Auxiliar Contábil', 1850.00),
    (6, 'Auxiliar de RH', 1640.00),
    (7, 'Recepcionista', 1640.00);

INSERT INTO
    Usuario (cpf, nome, logradouro, bairro, cep)
VALUES
    (
        '193.107.214-21',
        'Antonio Marcos da Silva',
        'Avenida 23 de Maio, 21',
        'Jardim das Árvores',
        '05728-354'
    ),
    (
        '284.576.932-54',
        'Maria Fernanda Oliveira',
        'Rua das Flores, 123',
        'Centro',
        '01311-200'
    ),
    (
        '375.689.123-87',
        'João Pedro Alves',
        'Travessa da Liberdade, 45',
        'Liberdade',
        '01502-900'
    ),
    (
        '468.213.765-98',
        'Ana Beatriz Gomes',
        'Alameda dos Anjos, 156',
        'Bela Vista',
        '01310-000'
    ),
    (
        '529.134.678-21',
        'Lucas Henrique Costa',
        'Rua Aurora, 211',
        'Santa Cecília',
        '01209-001'
    ),
    (
        '610.357.912-43',
        'Juliana Souza Santos',
        'Avenida Paulista, 1313',
        'Jardins',
        '01311-300'
    ),
    (
        '794.567.312-05',
        'Marcos Vinicius Ferreira',
        'Rua Vergueiro, 2000',
        'Vila Mariana',
        '04101-200'
    ),
    (
        '861.452.984-71',
        'Fernanda Alves Martins',
        'Rua da Consolação, 900',
        'Consolação',
        '01302-000'
    ),
    (
        '926.134.875-63',
        'Carlos Eduardo Santos',
        'Avenida Angélica, 150',
        'Higienópolis',
        '01227-200'
    ),
    (
        '039.512.873-44',
        'Patricia Mendes Rocha',
        'Rua Haddock Lobo, 400',
        'Cerqueira César',
        '01414-001'
    );

INSERT INTO
    Autor (nome, nacionalidade)
VALUES
    ('J.K. Rowling', 'Britânica'),
    ('Andrzej Sapkowski', 'Polonês'),
    ('J.R.R. Tolkien', 'Britânico'),
    ('Morgan Housel', 'Amaricano'),
    ('Lynn Painter', 'Americana');

INSERT INTO
    Editora (
        nome,
        logradouro,
        bairro,
        cep_zipcode,
        cidade,
        uf,
        pais
    )
VALUES
    (
        'Editora Rocco',
        'R. Evaristo da Veiga, 65',
        'Centro',
        '20030-021',
        'Rio de Janeiro',
        'RJ',
        'Brasil'
    ),
    (
        'Editora WMF Martins Fontes',
        'R. Conselheiro Ramalho, 330',
        'Bela Vista',
        '01325-000',
        'São Paulo',
        'SP',
        'Brasil'
    ),
    (
        'HarperCollins Brasil',
        'R. da Quitanda, 86',
        'Centro',
        '20091-005',
        'Rio de Janeiro',
        'RJ',
        'Brasil'
    ),
    (
        'Intrínseca',
        'Av. das Américas, 500',
        'Barra da Tijuca',
        '22640-973',
        'Rio de Janeiro',
        'RJ',
        'Brasil'
    );

INSERT INTO
    Livro (
        isbn,
        autor_id,
        editora_id,
        titulo,
        edicao,
        genero,
        data_publicacao,
        idioma
    )
VALUES
    (
        '8532530788',
        1,
        1,
        'Harry Potter e a Pedra Filosofal: 1',
        1,
        'Literatura e Ficção',
        '2017-08-19',
        'PT-BR'
    ),
    (
        '8532530796',
        1,
        1,
        'Harry Potter e a Câmara Secreta: 2',
        1,
        'Literatura e Ficção',
        '2017-08-19',
        'PT-BR'
    ),
    (
        '8532530804',
        1,
        1,
        'Harry Potter e o Prisioneiro de Azkaban: 3',
        1,
        'Literatura e Ficção',
        '2017-08-19',
        'PT-BR'
    ),
    (
        '8532530818',
        1,
        1,
        'Harry Potter e o Cálice de Fogo: 4',
        1,
        'Literatura e Ficção',
        '2017-08-19',
        'PT-BR'
    ),
    (
        '8532530826',
        1,
        1,
        'Harry Potter e a Ordem da Fênix: 5',
        1,
        'Literatura e Ficção',
        '2017-08-19',
        'PT-BR'
    ),
    (
        '8532530842',
        1,
        1,
        'Harry Potter e as Relíquias da Morte: 7',
        1,
        'Literatura e Ficção',
        '2017-08-19',
        'PT-BR'
    ),
    (
        '8546902812',
        2,
        2,
        'The Witcher: O último desejo',
        1,
        'Ficção Científica Fantasia',
        '2019-12-19',
        'PT-BR'
    ),
    (
        '8546902895',
        2,
        2,
        'The Witcher: A espada do destino',
        1,
        'Ficção Científica Fantasia',
        '2017-08-19',
        'PT-BR'
    ),
    (
        '8546902909',
        2,
        2,
        'The Witcher: O sangue dos elfos',
        1,
        'Ficção Científica Fantasia',
        '2017-08-19',
        'PT-BR'
    ),
    (
        '8595084750',
        3,
        3,
        'O Senhor dos Anéis: A Sociedade do Anel',
        1,
        'Fantasia Épica',
        '2017-08-19',
        'PT-BR'
    ),
    (
        '8595084769',
        3,
        3,
        'O Senhor dos Anéis: As duas torres',
        1,
        'Fantasia Épica',
        '2017-08-19',
        'PT-BR'
    ),
    (
        '8595084777',
        3,
        3,
        'O Senhor dos Anéis: O retorno do rei',
        1,
        'Fantasia Épica',
        '2017-08-19',
        'PT-BR'
    ),
    (
        '6555111100',
        4,
        3,
        'A psicologia financeira: lições atemporais sobre fortuna, ganância e felicidade',
        1,
        'Finanças',
        '2021-03-15',
        'PT-BR'
    ),
    (
        '6555607289',
        5,
        4,
        'Melhor do que nos filmes',
        1,
        'Livros de Comédia Romântica',
        '2023-04-06',
        'PT-BR'
    );

INSERT INTO
    Livro_Fisico (isbn, tipo_item, qt_estoque, valor_unitario)
VALUES
    ('8532530788', 'LIVRO', 10, 59.90),
    ('8532530796', 'LIVRO', 7, 69.90),
    ('8532530804', 'LIVRO', 7, 79.90),
    ('8532530818', 'LIVRO', 12, 89.90),
    ('8532530826', 'LIVRO', 2, 99.90),
    ('8532530842', 'LIVRO', 5, 109.90),
    ('8546902812', 'LIVRO', 14, 45.90),
    ('8546902895', 'LIVRO', 3, 49.90),
    ('8546902909', 'LIVRO', 9, 59.90),
    ('8595084750', 'LIVRO', 10, 69.90),
    ('8595084769', 'LIVRO', 10, 69.90),
    ('8595084777', 'LIVRO', 10, 69.90),
    ('6555111100', 'LIVRO', 3, 159.90),
    ('6555607289', 'LIVRO', 5, 99.90);

INSERT INTO
    Contato (usuario_id, telefone, email)
VALUES
    (1, '5342-3547', 'usuario1@gmail.com'),
    (2, '1234-5678', 'usuario2@gmail.com'),
    (3, '2345-6789', 'usuario3@gmail.com'),
    (4, '3456-7890', 'usuario4@hotmail.com'),
    (5, '4567-8901', 'usuario5@hotmail.com'),
    (6, '5678-9012', 'usuario6@hotmail.com'),
    (7, '6789-0123', 'usuario7@outlook.com'),
    (8, '7890-1234', 'usuario8@outlook.com'),
    (9, '8901-2345', 'usuario9@outlook.com'),
    (10, '9012-3456', 'usuario10@outlook.com');

INSERT INTO
    Funcionario (cargo_id, nome, cpf, data_nascimento)
VALUES
    (
        1,
        'Fabriola Pereira',
        '123.456.789-00',
        '1972-05-12'
    ),
    (2, 'Carlos Souza', '987.654.321-00', '1980-11-23'),
    (
        3,
        'Mariana Silva',
        '456.789.123-45',
        '1990-07-19'
    ),
    (3, 'José Almeida', '234.567.890-12', '1985-02-05'),
    (4, 'Ana Paula', '567.890.123-45', '1992-12-10'),
    (4, 'João Carlos', '678.901.234-56', '1975-03-18'),
    (
        5,
        'Luciana Azevedo',
        '789.012.345-67',
        '1988-09-15'
    ),
    (5, 'Roberto Lima', '890.123.456-78', '1982-06-25'),
    (
        6,
        'Patrícia Santos',
        '901.234.567-89',
        '1995-04-22'
    ),
    (
        6,
        'Fernanda Costa',
        '012.345.678-90',
        '1984-10-12'
    ),
    (7, 'Rafael Silva', '123.123.123-12', '1991-02-21'),
    (
        7,
        'Camila Ribeiro',
        '321.321.321-32',
        '1987-07-30'
    ),
    (
        8,
        'Eduardo Rocha',
        '234.234.234-23',
        '1978-03-12'
    ),
    (8, 'Bruna Lima', '345.345.345-34', '1989-08-11'),
    (
        9,
        'Gabriel Mendes',
        '456.456.456-45',
        '1992-11-02'
    ),
    (
        9,
        'Helena Torres',
        '567.567.567-56',
        '1985-01-18'
    ),
    (
        10,
        'Vinícius Alves',
        '678.678.678-67',
        '1983-09-05'
    ),
    (
        10,
        'Renato Cunha',
        '789.789.789-78',
        '1979-06-22'
    ),
    (
        11,
        'Isabela Duarte',
        '890.890.890-89',
        '2004-04-08'
    ),
    (
        12,
        'Marcelo Costa',
        '901.901.901-90',
        '2002-05-15'
    );

INSERT INTO
    Status_Funcionario (
        funcionario_id,
        data_admissao,
        data_demissao,
        funcionario_ativo
    )
VALUES
    (20, '2010-08-30', '2022-09-20', 'NÃO');

INSERT INTO
    Status_Funcionario (
        funcionario_id,
        data_admissao,
        data_demissao,
        funcionario_ativo
    )
VALUES
    (1, '2010-01-10', NULL, 'SIM'),
    (2, '2005-04-11', NULL, 'SIM'),
    (3, '2012-06-15', NULL, 'SIM'),
    (4, '2008-08-01', NULL, 'SIM'),
    (5, '2015-03-22', NULL, 'SIM'),
    (6, '2011-12-05', NULL, 'SIM'),
    (7, '2016-05-14', NULL, 'SIM'),
    (8, '2009-10-27', NULL, 'SIM'),
    (9, '2018-09-30', NULL, 'SIM'),
    (10, '2013-07-21', NULL, 'SIM'),
    (11, '2020-01-15', NULL, 'SIM'),
    (12, '2019-02-10', NULL, 'SIM'),
    (13, '2017-11-30', NULL, 'SIM'),
    (14, '2021-06-01', NULL, 'SIM'),
    (15, '2014-04-23', NULL, 'SIM'),
    (16, '2018-03-12', NULL, 'SIM'),
    (17, '2010-09-22', NULL, 'SIM'),
    (18, '2022-10-05', NULL, 'SIM'),
    (19, '2023-03-20', NULL, 'SIM');

INSERT INTO
    Emprestimo (
        usuario_id,
        funcionario_id,
        ObraFisica_id,
        data_emprestimo,
        hora_emprestimo,
        prazo_entrega
    )
VALUES
    (1, 1, 1, '2021-08-15', '08:00', '2021-08-17'),
    (2, 2, 2, '2021-09-01', '09:30', '2021-09-03'),
    (3, 3, 3, '2021-10-05', '14:00', '2021-10-07'),
    (4, 4, 4, '2021-11-12', '11:15', '2021-11-14'),
    (5, 5, 5, '2021-12-01', '15:45', '2021-12-03'),
    (6, 6, 6, '2021-12-15', '16:30', '2021-12-17'),
    (7, 7, 7, '2022-01-10', '10:00', '2022-01-12'),
    (8, 8, 8, '2022-02-18', '13:20', '2022-02-20'),
    (9, 9, 9, '2022-03-22', '09:00', '2022-03-24'),
    (10, 10, 10, '2022-04-05', '10:30', '2022-04-07');

INSERT INTO
    Reserva (
        emprestimo_id,
        usuario_id,
        funcionario_id,
        ObraFisica_id,
        status_reserva,
        data_reserva,
        hora_reserva
    )
VALUES
    (1, 1, 1, 1, 'Disponivel', '2021-08-06', '08:40'),
    (2, 2, 2, 2, 'Reservado', '2021-09-01', '09:00'),
    (3, 3, 3, 3, 'Disponivel', '2021-10-04', '13:30'),
    (4, 4, 4, 4, 'Disponivel', '2021-11-11', '11:00'),
    (5, 5, 5, 5, 'Disponivel', '2021-12-01', '15:00'),
    (6, 6, 6, 6, 'Reservado', '2021-12-14', '16:00'),
    (7, 7, 7, 7, 'Disponivel', '2022-01-09', '09:30'),
    (8, 8, 8, 8, 'Disponivel', '2022-02-17', '13:00'),
    (9, 9, 9, 9, 'Disponivel', '2022-03-21', '08:45'),
    (
        10,
        10,
        10,
        10,
        'Reservado',
        '2022-04-04',
        '10:00'
    );

INSERT INTO
    Livro_Emprestado (
        emprestimo_id,
        usuario_id,
        funcionario_id,
        ObraFisica_id,
        data_devolucao,
        hora_devolucao,
        multa_atraso
    )
VALUES
    (1, 1, 1, 1, '2021-08-17', '18:00', 'NÃO'),
    (2, 2, 2, 2, '2021-09-03', '17:30', 'NÃO'),
    (3, 3, 3, 3, '2021-10-07', '15:00', 'NÃO'),
    (4, 4, 4, 4, '2021-11-14', '16:45', 'NÃO'),
    (5, 5, 5, 5, '2021-12-03', '19:00', 'NÃO'),
    (6, 6, 6, 6, '2021-12-17', '17:15', 'SIM'),
    (7, 7, 7, 7, '2022-01-12', '18:30', 'NÃO'),
    (8, 8, 8, 8, '2022-02-20', '14:00', 'NÃO'),
    (9, 9, 9, 9, '2022-03-24', '13:45', 'NÃO'),
    (10, 10, 10, 10, '2022-04-07', '16:00', 'NÃO');