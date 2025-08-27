-- CreateEnum
CREATE TYPE "public"."Problem_topic" AS ENUM ('DP', 'GREDDY', 'MATH');

-- CreateTable
CREATE TABLE "public"."problem" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "descreption" TEXT NOT NULL,
    "isvisible" BOOLEAN NOT NULL DEFAULT true,
    "solution_code" TEXT NOT NULL,
    "sample_input" TEXT NOT NULL,
    "sample_output" TEXT NOT NULL,
    "tutorial" TEXT,
    "problem_setter_id" TEXT,
    "difficulty" INTEGER,
    "topic" "public"."Problem_topic",

    CONSTRAINT "problem_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "problem_id_key" ON "public"."problem"("id");
