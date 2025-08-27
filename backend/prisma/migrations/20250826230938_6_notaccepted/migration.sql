-- CreateTable
CREATE TABLE "public"."notaccepted" (
    "id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "problem_id" TEXT NOT NULL,
    "title" TEXT,
    "testcase" INTEGER,

    CONSTRAINT "notaccepted_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "notaccepted_id_key" ON "public"."notaccepted"("id");
