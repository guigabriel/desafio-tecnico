DROP DATABASE IF EXISTS taxi_db;

CREATE DATABASE IF NOT EXISTS taxi_db;

USE taxi_db;

CREATE TABLE IF NOT EXISTS motoristas (
  id NUMERIC(19,0) NOT NULL AUTO_INCREMENT 
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  car VARCHAR(255) NOT NULL,
  avaliation VARCHAR(255) NOT NULL,
  tax DECIMAL(19,2) NOT NULL,
  km_min NUMERIC(19,0) NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO drivers (id, name, description, car, avaliation, tax, km_min) 
VALUES
(1, 'Homer Simpson', 'Olá! Sou o Homer, seu motorista camarada! Relaxe e aproveite o passeio, com direito a rosquinhas e boas risadas (e talvez alguns desvios).', 'Plymouth Valiant 1973 rosa e enferrujado', '2/5 Motorista simpático,
mas errou o caminho 3
vezes. O carro cheira a
donuts.', 2.50, 1),
(2, 'Dominic Toretto', 'Ei, aqui é o Dom. Pode entrar, vou te levar com segurança e rapidez ao seu destino. Só não mexa no rádio, a playlist é sagrada.', 'Dodge Charger R/T 1970 modificado', '4/5 Que viagem incrível! O
carro é um show à parte
e o motorista, apesar de
ter uma cara de poucos
amigos, foi super gente
boa. Recomendo!', 5.00, 5),
(3, 'James Bond', 'Boa noite, sou James Bond. À seu dispor para um passeio suave e discreto. Aperte o cinto e aproveite a viagem.', 'Aston Martin DB5 clássico', '5/5 Serviço impecável! O
motorista é a própria
definição de classe e o
carro é simplesmente
magnífico. Uma
experiência digna de
um agente secreto.', 10.00, 10);


CREATE TABLE IF NOT EXISTS viagens(
  id NUMERIC(19, 0) NOT NULL AUTO_INCREMENT,
  customer_id VARCHAR(25) NOT NULL,
  origins VARCHAR(255) NOT NULL,
  destinations VARCHAR(255) NOT NULL,
  distance DECIMAL(19,1) NOT NULL,
  duration VARCHAR(255) NOT NULL,
  driver_id NUMERIC(19,0) NOT NULL,
  value DECIMAL(19,2) NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(driver_id) REFERENCES drivers (id)
)

