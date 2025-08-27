/*
  Warnings:

  - Changed the type of `problem_id` on the `usersubmission` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "public"."usersubmission" DROP COLUMN "problem_id",
ADD COLUMN     "problem_id" INTEGER NOT NULL;
