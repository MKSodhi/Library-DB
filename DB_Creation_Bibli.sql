-- Tabela para armazenar informações dos autores. / Table to store author information.
CREATE TABLE
  Autor (
    autor_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(100),
    PRIMARY KEY (autor_id)
  );

-- Tabela para armazenar informações das editoras. / Table to store publisher information.
CREATE TABLE
  Editora (
    editora_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    logradouro VARCHAR(255) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cep_zipcode VARCHAR(10) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    pais VARCHAR(100) NOT NULL,
    PRIMARY KEY (editora_id)
  );

-- Tabela para armazenar informações dos usuários. / Table to store user information.
CREATE TABLE
  Usuario (
    usuario_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    cpf VARCHAR(14) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    logradouro VARCHAR(100) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    PRIMARY KEY (usuario_id)
  );

-- Tabela para armazenar informações dos departamentos. / Table to store department information.
CREATE TABLE
  Departamento (
    departamento_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(25) NOT NULL,
    PRIMARY KEY (departamento_id)
  );

-- Tabela para armazenar informações dos cargos. / Table to store job position information.
CREATE TABLE
  Cargo (
    cargo_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    departamento_id INT UNSIGNED NOT NULL,
    nome VARCHAR(50) NOT NULL,
    salario DECIMAL(7, 2) NOT NULL,
    PRIMARY KEY (cargo_id),
    FOREIGN KEY (departamento_id) REFERENCES Departamento (departamento_id)
  );

-- Tabela para armazenar informações dos livros. / Table to store book information.
CREATE TABLE
  Livro (
    isbn VARCHAR(13) NOT NULL,
    autor_id INT UNSIGNED NOT NULL,
    editora_id INT UNSIGNED NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    edicao VARCHAR(50) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    data_publicacao DATE NOT NULL,
    idioma VARCHAR(15) NOT NULL,
    PRIMARY KEY (isbn),
    FOREIGN KEY (autor_id) REFERENCES Autor (autor_id),
    FOREIGN KEY (editora_id) REFERENCES Editora (editora_id)
  );

-- Tabela para armazenar informações dos livros físicos. / Table to store physical book information.
CREATE TABLE
  Livro_Fisico (
    ObraFisica_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    isbn VARCHAR(13) NOT NULL,
    tipo_item ENUM ('Livro', 'Revista'),
    qt_estoque INT UNSIGNED NOT NULL,
    valor_unitario DECIMAL(7, 2) NOT NULL,
    PRIMARY KEY (ObraFisica_id),
    FOREIGN KEY (isbn) REFERENCES Livro (isbn)
  );

-- Tabela para armazenar informações de contatos dos usuários. / Table to store user contact information.
CREATE TABLE
  Contato (
    contato_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    usuario_id INT UNSIGNED NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(32) NOT NULL,
    PRIMARY KEY (contato_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id)
  );

-- Tabela para armazenar informações dos funcionários. / Table to store employee information.
CREATE TABLE
  Funcionario (
    funcionario_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    cargo_id INT UNSIGNED NOT NULL,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    data_nascimento DATE NOT NULL,
    PRIMARY KEY (funcionario_id),
    FOREIGN KEY (cargo_id) REFERENCES Cargo (cargo_id)
  );

-- Tabela para armazenar informações sobre o status dos funcionários. / Table to store employee status information.
CREATE TABLE
  Status_Funcionario (
    status_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    funcionario_id INT UNSIGNED NOT NULL,
    data_admissao DATE NOT NULL,
    data_demissao DATE,
    funcionario_ativo ENUM ('SIM', 'NÃO') NOT NULL,
    PRIMARY KEY (status_id),
    FOREIGN KEY (funcionario_id) REFERENCES Funcionario (funcionario_id)
  );

-- Tabela para armazenar informações sobre os empréstimos de livros. / Table to store book loan information.
CREATE TABLE
  Emprestimo (
    emprestimo_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    usuario_id INT UNSIGNED NOT NULL,
    funcionario_id INT UNSIGNED NOT NULL,
    ObraFisica_id INT UNSIGNED NOT NULL,
    data_emprestimo DATE,
    hora_emprestimo TIME,
    prazo_entrega DATE NOT NULL,
    PRIMARY KEY (emprestimo_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
    FOREIGN KEY (funcionario_id) REFERENCES Funcionario (funcionario_id),
    FOREIGN KEY (ObraFisica_id) REFERENCES Livro_Fisico (ObraFisica_id)
  );

-- Tabela para armazenar informações sobre livros emprestados. / Table to store information about borrowed books.
CREATE TABLE
  Livro_Emprestado (
    livro_emprestado_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    emprestimo_id INT UNSIGNED NOT NULL,
    usuario_id INT UNSIGNED NOT NULL,
    funcionario_id INT UNSIGNED NOT NULL,
    ObraFisica_id INT UNSIGNED NOT NULL,
    data_devolucao DATE,
    hora_devolucao TIME,
    multa_atraso ENUM ('SIM', 'NÃO'),
    PRIMARY KEY (livro_emprestado_id),
    FOREIGN KEY (emprestimo_id) REFERENCES Emprestimo (emprestimo_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
    FOREIGN KEY (funcionario_id) REFERENCES Funcionario (funcionario_id),
    FOREIGN KEY (ObraFisica_id) REFERENCES Livro_Fisico (ObraFisica_id)
  );

-- Tabela para armazenar informações sobre reservas de livros. / Table to store book reservation information.
CREATE TABLE
  Reserva (
    reserva_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    emprestimo_id INT UNSIGNED NOT NULL,
    usuario_id INT UNSIGNED NOT NULL,
    funcionario_id INT UNSIGNED NOT NULL,
    ObraFisica_id INT UNSIGNED NOT NULL,
    status_reserva ENUM ('Disponivel', 'Reservado'),
    data_reserva DATE,
    hora_reserva TIME,
    PRIMARY KEY (reserva_id),
    FOREIGN KEY (emprestimo_id) REFERENCES Emprestimo (emprestimo_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
    FOREIGN KEY (funcionario_id) REFERENCES Funcionario (funcionario_id),
    FOREIGN KEY (ObraFisica_id) REFERENCES Livro_Fisico (ObraFisica_id)
  );