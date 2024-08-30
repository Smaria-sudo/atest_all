CREATE DATABASE skrypnikovaM ;

CREATE TABLE test_table ( 
  name VARCHAR(10) NOT NULL CHECK (length(name) > 3 AND length(name) < 11), 
  surname VARCHAR NOT NULL, 
  city VARCHAR NOT NULL, 
  age INT NOT NULL CHECK (age > 0 AND age < 151) 
); 
 
INSERT INTO test_table (name, surname, city, age) VALUES 
('Анна', 'Соколова', 'Russia', 29), 
('Жанна', 'Петрова', 'Russia', 34), 
('Алексей', 'Иванов', 'Russia', 45), 
('Евгения', 'Белая', 'Russia', 22), 
('Егор', 'Фетченко', 'Russia', 55), 
('Олеся', 'Егорова', 'Russia', 30), 
('Николай', 'Черных', 'Russia', 41), 
('Илья', 'Озеркин', 'Russia', 25), 
('Виктор', 'Красильников', 'Russia', 50), 
('Виктория', 'Первая', 'Russia', 35),
('Александр', 'Муренова', 'Russia', 35),
('Светлана', 'Ковалевская', 'Russia', 35),
('Виктор', 'Семенов', 'Russia', 35),
('Юлия', 'Ходько', 'Russia', 35),
('Инна', 'Артаутова', 'Russia', 15),
('Анна', 'Визович', 'Russia', 37),
('Семен', 'Подгорный', 'Russia', 32),
('Олег', 'Караваев', 'Russia', 31),
('Денис', 'Кругликов', 'Russia', 30),
('Зинаида', 'Зорькина', 'Russia', 28);
