-- CreateTable
CREATE TABLE `Generar_Certificados` (
    `id_gen_cer` INTEGER NOT NULL AUTO_INCREMENT,
    `url_gen_cer` VARCHAR(1000) NOT NULL,
    `cod_gen_cer` VARCHAR(1000) NOT NULL,
    `estado_cer` VARCHAR(50) NOT NULL,
    `fecha_gen_cer` DATE NOT NULL,
    `id_cur_cer` INTEGER NOT NULL,

    PRIMARY KEY (`id_gen_cer`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Generar_Certificados` ADD CONSTRAINT `Generar_Certificados_id_cur_cer_fkey` FOREIGN KEY (`id_cur_cer`) REFERENCES `Cursos`(`id_cur`) ON DELETE RESTRICT ON UPDATE CASCADE;
