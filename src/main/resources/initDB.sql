
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
	  id INT NOT NULL AUTO_INCREMENT,
	  name VARCHAR(25) NOT NULL,
	  age INT NOT NULL DEFAULT 1,
	  isAdmin BIT NOT NULL,
	  createdDate TIMESTAMP NULL,
	  PRIMARY KEY (id)
);

INSERT INTO test.User (name, age, isAdmin, createdDate) VALUES ('Ivan', 30, 0, '2016-05-09 22:54:11');
INSERT INTO test.User (name, age, isAdmin, createdDate) VALUES ('Serg', 22, 0, '2016-05-09 22:54:03');
INSERT INTO test.User (name, age, isAdmin, createdDate) VALUES ('Dan', 24, 0, '2016-05-09 22:54:04');
INSERT INTO test.User (name, age, isAdmin, createdDate) VALUES ('Bob', 33, 1, '2016-05-09 22:54:15');
INSERT INTO test.User (name, age, isAdmin, createdDate) VALUES ('Roy', 20, 1, '2016-05-09 22:54:19');
INSERT INTO test.User (name, age, isAdmin, createdDate) VALUES ('Ivan', 40, 0, '2016-05-09 22:54:23');
INSERT INTO test.User (name, age, isAdmin, createdDate) VALUES ('Serg', 30, 0, '2016-05-09 22:54:44');
INSERT INTO test.User (name, age, isAdmin, createdDate) VALUES ('Omar', 25, 0, '2016-05-09 22:54:50');
INSERT INTO test.User (name, age, isAdmin, createdDate) VALUES ('Cesar', 21, 0, '2016-05-09 22:55:11');