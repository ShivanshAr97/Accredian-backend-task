/*
  Warnings:

  - You are about to drop the column `referredBy` on the `users` table. All the data in the column will be lost.
  - You are about to drop the `people` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `people` DROP FOREIGN KEY `People_userId_fkey`;

-- AlterTable
ALTER TABLE `users` DROP COLUMN `referredBy`,
    ADD COLUMN `referredById` INTEGER NULL;

-- DropTable
DROP TABLE `people`;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_referredById_fkey` FOREIGN KEY (`referredById`) REFERENCES `users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
