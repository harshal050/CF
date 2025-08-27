-- CreateTable
CREATE TABLE "public"."blog" (
    "id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "blog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."blogComment" (
    "id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "data" TEXT NOT NULL,
    "blog_id" TEXT NOT NULL,

    CONSTRAINT "blogComment_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "blog_id_key" ON "public"."blog"("id");

-- CreateIndex
CREATE UNIQUE INDEX "blogComment_id_key" ON "public"."blogComment"("id");

-- AddForeignKey
ALTER TABLE "public"."blogComment" ADD CONSTRAINT "blogComment_blog_id_fkey" FOREIGN KEY ("blog_id") REFERENCES "public"."blog"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
