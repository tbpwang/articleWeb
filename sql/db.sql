DROP DATABASE IF EXISTS examination;
CREATE DATABASE examination;

# user
DROP TABLE IF EXISTS examination.user;
CREATE TABLE examination.user (
  id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255),
  phone    VARCHAR(100),
  address   VARCHAR(1024),
  role     VARCHAR(255) DEFAULT 'user'
);

INSERT INTO examination.user (username, password,role) VALUES ('admin', '123','admin');

SELECT *
FROM examination.user;

# article
DROP TABLE IF EXISTS examination.article;
CREATE TABLE examination.article (
  id             INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title          VARCHAR(255),
  abstractString VARCHAR(1024),
  content        TEXT,
  date           DATE,
  userId         INT UNSIGNED
);

ALTER TABLE examination.article
    ADD CONSTRAINT fk_article_userid FOREIGN KEY(userId) REFERENCES examination.user(id);




