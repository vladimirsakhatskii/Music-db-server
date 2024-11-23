-- CreateTable
CREATE TABLE "Songs" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "file" BYTEA NOT NULL,
    "albumId" INTEGER NOT NULL,
    "authorId" INTEGER NOT NULL,

    CONSTRAINT "Songs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Albums" (
    "id" SERIAL NOT NULL,
    "name_album" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "authorId" INTEGER NOT NULL,

    CONSTRAINT "Albums_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Authors" (
    "id" SERIAL NOT NULL,
    "name_author" TEXT NOT NULL,

    CONSTRAINT "Authors_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Songs" ADD CONSTRAINT "Songs_albumId_fkey" FOREIGN KEY ("albumId") REFERENCES "Albums"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Songs" ADD CONSTRAINT "Songs_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES "Authors"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Albums" ADD CONSTRAINT "Albums_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES "Authors"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
