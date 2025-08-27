-- CreateTable
CREATE TABLE "public"."admin" (
    "id" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "admin_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "admin_id_key" ON "public"."admin"("id");

-- CreateIndex
CREATE UNIQUE INDEX "admin_username_key" ON "public"."admin"("username");
