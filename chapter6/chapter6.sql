USE Project;

ALTER TABLE utilisateur ADD INDEX idx_nom (nom);
ALTER TABLE `comment` ADD INDEX idx_bad (`bad`);
ALTER TABLE article ADD INDEX idx_rate (rate);

ALTER TABLE utilisateur COMMENT = 'Table des utilisateurs du blog';
ALTER TABLE `comment` COMMENT = 'Table des commentaires du blog';
ALTER TABLE article COMMENT = 'Table des articles du blog';