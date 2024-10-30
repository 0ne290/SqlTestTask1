CREATE DATABASE TestTask;

USE TestTask;


CREATE TABLE Td
(
	ContractNumber CHAR(6) NOT NULL,
  INDEX ContractNumberIndex (ContractNumber),
  TdCode SMALLINT UNSIGNED NOT NULL PRIMARY KEY,
  Service VARCHAR(64) NOT NULL,
  Deleted BOOL NOT NULL,
  RefToPackage SMALLINT UNSIGNED NULL,
  FOREIGN KEY (RefToPackage) REFERENCES Td(TdCode)
);

CREATE TABLE EMail
(
	ContractNumber CHAR(6) NOT NULL,
  FOREIGN KEY (ContractNumber) REFERENCES Td(ContractNumber),
  Service VARCHAR(64) NOT NULL
);


INSERT INTO Td VALUES
	('111111', 1, 'ВЛ', FALSE, NULL),
	('222222', 2, 'ВЛ', FALSE, NULL),
	('222222', 3, 'ДМФ', FALSE, NULL),
	('222222', 4, 'IPTV', FALSE, NULL),
	('222222', 5, 'IPTV', TRUE, NULL),
	('222222', 6, 'Видеосервис', TRUE, NULL),
	('222222', 7, 'Видеосервис', TRUE, NULL),
	('222222', 8, 'Оборудование', TRUE, NULL),
	('222222', 9, 'КТВ', FALSE, NULL),
	('222222', 10, 'Оборудование', TRUE, NULL),
	('222222', 11, 'Оборудование', TRUE, NULL),
	('333333', 888, 'Пакет', FALSE, NULL),
  ('333333', 12, 'ВЛ', FALSE, 888),
	('333333', 13, 'IPTV', FALSE, 888),
	('333333', 14, 'IPTV', FALSE, 888),
	('333333', 15, 'IPTV', FALSE, 888),
	('333333', 16, 'IPTV', FALSE, 888),
	('333333', 17, 'Оборудование', TRUE, NULL),
	('333333', 18, 'КТВ', FALSE, NULL);

INSERT INTO EMail VALUES
	('111111', '111111@mail.ru'),
  ('333333', '333333@mail.ru');
