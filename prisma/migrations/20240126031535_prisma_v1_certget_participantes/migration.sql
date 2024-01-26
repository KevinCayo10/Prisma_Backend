/*
  Warnings:

  - Added the required column `ced_par_cer` to the `Generar_Certificados` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `generar_certificados` ADD COLUMN `ced_par_cer` VARCHAR(191) NOT NULL;

-- CreateTable
CREATE TABLE `Participantes` (
    `ced_par` VARCHAR(10) NOT NULL,
    `nom_pat_par` VARCHAR(50) NOT NULL,
    `nom_mat_par` VARCHAR(50) NOT NULL,
    `ape_pat_par` VARCHAR(50) NOT NULL,
    `ape_mat_par` VARCHAR(50) NOT NULL,
    `email_par` VARCHAR(255) NOT NULL,

    UNIQUE INDEX `Participantes_email_par_key`(`email_par`),
    PRIMARY KEY (`ced_par`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Generar_Certificados` ADD CONSTRAINT `Generar_Certificados_ced_par_cer_fkey` FOREIGN KEY (`ced_par_cer`) REFERENCES `Participantes`(`ced_par`) ON DELETE RESTRICT ON UPDATE CASCADE;
