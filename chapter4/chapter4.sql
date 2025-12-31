CREATE DATABASE Project ;
USE Project ;
CREATE TABLE utilisateur
(
id int auto_increment  primary key ,
name_utilisateur VARCHAR(50) NOT NULL ,
email VARCHAR(50) UNIQUE ,
passworld VARCHAR(50) NOT NULL 
);

CREATE TABLE article
(
 id INT AUTO_INCREMENT PRIMARY KEY ,
 title VARCHAR(100) NOT NULL ,
 contnent TEXT NOT NULL ,
 id_utilisateur INT ,
 FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id)
);

CREATE TABLE comment
(
 id INT AUTO_INCREMENT PRIMARY KEY ,
 content TEXT NOT NULL ,
 author VARCHAR(100) ,
 date_comment DATE ,
 id_article INT ,
 FOREIGN KEY (id_article) REFERENCES article(id)
);
