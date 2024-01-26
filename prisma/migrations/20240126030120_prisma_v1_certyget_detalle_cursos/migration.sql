-- CreateTable
CREATE TABLE `Firmas` (
    `ced_fir` VARCHAR(10) NOT NULL,
    `nom_pat_fir` VARCHAR(50) NOT NULL,
    `nom_mat_fir` VARCHAR(50) NOT NULL,
    `ape_pat_fir` VARCHAR(50) NOT NULL,
    `ape_mat_fir` VARCHAR(50) NOT NULL,
    `cargo_fir` VARCHAR(50) NOT NULL,
    `tit_ter_fir` BOOLEAN NOT NULL,
    `tit_cuar_fir` BOOLEAN NOT NULL,
    `url_firma` VARCHAR(1000) NOT NULL,
    `estado_fir` SMALLINT NOT NULL,

    PRIMARY KEY (`ced_fir`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Detalle_cursos` (
    `id_det_cur` INTEGER NOT NULL AUTO_INCREMENT,
    `id_cur` INTEGER NOT NULL,
    `ced_fir` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_det_cur`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Detalle_cursos` ADD CONSTRAINT `Detalle_cursos_id_cur_fkey` FOREIGN KEY (`id_cur`) REFERENCES `Cursos`(`id_cur`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Detalle_cursos` ADD CONSTRAINT `Detalle_cursos_ced_fir_fkey` FOREIGN KEY (`ced_fir`) REFERENCES `Firmas`(`ced_fir`) ON DELETE RESTRICT ON UPDATE CASCADE;
