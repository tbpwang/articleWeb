DROP DATABASE IF EXISTS examination;
CREATE DATABASE examination;

# user
DROP TABLE IF EXISTS examination.user;
CREATE TABLE examination.user (
  id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255),
  role     VARCHAR(255) DEFAULT 'admin'
);

INSERT INTO examination.user (username, password) VALUES ('admin', '123');

SELECT *
FROM examination.user;