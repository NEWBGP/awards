-- CreateTable
CREATE TABLE "Usuarios" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "nome" TEXT,
    "senha" TEXT
);

-- CreateTable
CREATE TABLE "Categorias" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nome" TEXT,
    "foto" TEXT
);

-- CreateTable
CREATE TABLE "Participantes" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nome" TEXT,
    "foto" TEXT
);

-- CreateTable
CREATE TABLE "ParticipantesCategorias" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "participante" INTEGER NOT NULL,
    "categoria" INTEGER NOT NULL,
    CONSTRAINT "ParticipantesCategorias_participante_fkey" FOREIGN KEY ("participante") REFERENCES "Participantes" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "ParticipantesCategorias_categoria_fkey" FOREIGN KEY ("categoria") REFERENCES "Categorias" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Votos" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "participante" INTEGER NOT NULL,
    "categoria" INTEGER NOT NULL,
    "nome_mine" TEXT
);

-- CreateIndex
CREATE UNIQUE INDEX "Usuarios_email_key" ON "Usuarios"("email");
