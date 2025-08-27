/*
  Warnings:

  - You are about to drop the column `in_testcase` on the `problem` table. All the data in the column will be lost.
  - You are about to drop the column `out_testcase` on the `problem` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "public"."problem" DROP COLUMN "in_testcase",
DROP COLUMN "out_testcase",
ADD COLUMN     "input_testcase" TEXT,
ADD COLUMN     "output_testcase" TEXT;
