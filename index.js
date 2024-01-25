const express = require("express");
const cors = require("cors");
const productRouter = require("./src/routes/product.routes.js");
const categoryRouter = require("./src/routes/category.routes.js");
const app = express();
app.use(express.json());
app.use(cors());

app.use("/api/products", productRouter);
app.use("/api/categories", categoryRouter);
app.listen(3000);
app.use("/", (req, res) => {
  res.send("Hello World");
});
