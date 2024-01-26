-- CreateTable
CREATE TABLE `Usuarios` (
    `id_usu` INTEGER NOT NULL AUTO_INCREMENT,
    `user_usu` VARCHAR(100) NOT NULL,
    `pass_usu` VARCHAR(255) NOT NULL,
    `rol_usu` VARCHAR(20) NOT NULL,

    UNIQUE INDEX `Usuarios_user_usu_key`(`user_usu`),
    PRIMARY KEY (`id_usu`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Categorias` (
    `id_cate` INTEGER NOT NULL AUTO_INCREMENT,
    `nom_cate` VARCHAR(100) NOT NULL,
    `desc_cate` VARCHAR(1000) NOT NULL,
    `estado_cate` SMALLINT NOT NULL,

    PRIMARY KEY (`id_cate`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Cursos` (
    `id_cur` INTEGER NOT NULL AUTO_INCREMENT,
    `nom_cur` VARCHAR(100) NOT NULL,
    `fecha_inicio_cur` DATE NOT NULL,
    `feacha_fin_cur` DATE NOT NULL,
    `dur_cur` VARCHAR(100) NOT NULL,
    `url_cer` VARCHAR(1000) NOT NULL,
    `estado_cur` SMALLINT NOT NULL,
    `id_cate_cur` INTEGER NOT NULL,

    PRIMARY KEY (`id_cur`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Cursos` ADD CONSTRAINT `Cursos_id_cate_cur_fkey` FOREIGN KEY (`id_cate_cur`) REFERENCES `Categorias`(`id_cate`) ON DELETE RESTRICT ON UPDATE CASCADE;
