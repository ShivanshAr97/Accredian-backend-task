-- AlterTable
ALTER TABLE `user` ADD COLUMN `incNormalPage` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `incVisitPage` INTEGER NOT NULL DEFAULT 0;
