const Router = require("express");
const categoryRouter = Router();
const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();
categoryRouter.get("/", async (req, res) => {
  const listProducts = await prisma.category();
  res.json({
    data: {
      listProducts,
    },
  });
});

categoryRouter.post("/", async (req, res) => {
  const { name } = req.body;
  const newCategory = await prisma.category.create({
    data: {
      name,
    },
  });
  res.status(200).json({
    data: {
      newCategory,
    },
  });
});

module.exports = categoryRouter;
