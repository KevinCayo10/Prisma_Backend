const { PrismaClient } = require("@prisma/client");
const Router = require("express");
const productRouter = Router();
const prisma = new PrismaClient();

productRouter.get("/", async (req, res) => {
  const listProducts = await prisma.product.findMany({
    include: {
      category: true,
    },
  });
  res.status(200).json({
    listProducts,
  });
});

productRouter.post("/", async (req, res) => {
  const { name, price, stock, categoryId } = req.body;

  const newProduct = await prisma.product.create({
    data: {
      name,
      price,
      stock,
      categoryId,
    },
  });
  res.status(200).json({
    data: {
      newProduct,
    },
  });
});

productRouter.put("/", async (req, res) => {
  const { id, name, price, stock, categoryId } = req.body;
  const updateProduct = await prisma.product.update({
    where: { id },
    data: {
      name,
      price,
      stock,
      categoryId,
    },
  });
  res.status(200).json({
    updateProduct,
  });
});

productRouter.delete("/", async (req, res) => {
  const { id } = req.body;
  const deleteProduct = await prisma.product.delete({
    where: { id },
  });
  res.status(200).json(deleteProduct);
});

module.exports = productRouter;
