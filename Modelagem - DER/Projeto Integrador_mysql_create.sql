CREATE TABLE `tb_usuario` (
	`id_usuario` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL AUTO_INCREMENT,
	`email` varchar(55) NOT NULL AUTO_INCREMENT,
	`senha` varchar(8) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id_usuario`)
);

CREATE TABLE `tb_postagem` (
	`id_postagem` bigint NOT NULL AUTO_INCREMENT,
	`titulo` longtext(200) NOT NULL AUTO_INCREMENT,
	`texto` longtext AUTO_INCREMENT,
	`data` TIMESTAMP AUTO_INCREMENT,
	`midia` varchar(255) AUTO_INCREMENT,
	`fk_usuario_id` varchar(255) NOT NULL AUTO_INCREMENT,
	`fk_tema_id` bigint(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id_postagem`)
);

CREATE TABLE `tb_tema` (
	`id_tema` bigint NOT NULL AUTO_INCREMENT,
	`nome_tema` varchar(40) NOT NULL,
	`sobre` varchar(300) NOT NULL AUTO_INCREMENT,
	`img_devs` varchar(255) NOT NULL,
	PRIMARY KEY (`id_tema`)
);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk0` FOREIGN KEY (`fk_usuario_id`) REFERENCES `tb_usuario`(`id_usuario`);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk1` FOREIGN KEY (`fk_tema_id`) REFERENCES `tb_tema`(`id_tema`);




