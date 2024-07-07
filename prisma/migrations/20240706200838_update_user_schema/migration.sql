/*
  Warnings:

  - Made the column `referredBy` on table `user` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `user` MODIFY `referredBy` VARCHAR(191) NOT NULL DEFAULT '';
