-- CreateTable
CREATE TABLE "public"."contest" (
    "id" TEXT NOT NULL,
    "problems_id" INTEGER[],
    "admins_id" TEXT[],
    "register_users_id" TEXT[],
    "time_to_start" TIMESTAMP(3) NOT NULL,
    "duration" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "public"."contestComment" (
    "id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "data" TEXT NOT NULL,
    "contest_id" TEXT NOT NULL,

    CONSTRAINT "contestComment_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "contest_id_key" ON "public"."contest"("id");

-- CreateIndex
CREATE UNIQUE INDEX "contestComment_id_key" ON "public"."contestComment"("id");

-- AddForeignKey
ALTER TABLE "public"."contestComment" ADD CONSTRAINT "contestComment_contest_id_fkey" FOREIGN KEY ("contest_id") REFERENCES "public"."contest"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
