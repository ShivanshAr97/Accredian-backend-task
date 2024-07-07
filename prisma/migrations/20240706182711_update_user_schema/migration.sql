/*
  Warnings:

  - You are about to drop the column `referredById` on the `users` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `users` DROP FOREIGN KEY `users_referredById_fkey`;

-- AlterTable
ALTER TABLE `users` DROP COLUMN `referredById`,
    ADD COLUMN `userId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
