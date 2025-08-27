-- CreateEnum
CREATE TYPE "public"."Substatus" AS ENUM ('WAITING', 'ACCEPTED', 'NOTACCEPTED');

-- CreateEnum
CREATE TYPE "public"."Codelang" AS ENUM ('PYTHON', 'CPP23', 'RUST', 'JAVA');

-- CreateTable
CREATE TABLE "public"."usersubmission" (
    "id" TEXT NOT NULL,
    "problem_id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "user_code" TEXT NOT NULL,
    "codelang" "public"."Codelang" NOT NULL,
    "time" INTEGER,
    "memory" INTEGER,
    "submission_status" "public"."Substatus" NOT NULL DEFAULT 'WAITING',
    "submission_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "usersubmission_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "usersubmission_id_key" ON "public"."usersubmission"("id");
