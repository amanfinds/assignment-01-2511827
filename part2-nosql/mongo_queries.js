// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    product_id: 1,
    name: "Samsung Smart TV",
    category: "Electronics",
    price: 45000,
    specs: {
      screen_size: "55 inch",
      resolution: "4K",
      voltage: "220V",
      warranty_years: 2
    },
    features: ["Smart TV", "WiFi", "Voice Control"]
  },
  {
    product_id: 2,
    name: "Men Denim Jacket",
    category: "Clothing",
    price: 2500,
    sizes: ["S","M","L","XL"],
    material: "Denim"
  },
  {
    product_id: 3,
    name: "Organic Milk",
    category: "Groceries",
    price: 60,
    expiry_date: new Date("2024-12-30"),
    nutrition: {
      protein: "3.4g",
      fat: "3.2g"
    }
  }
]);

// OP2: find Electronics products with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});


// OP3: find Groceries expiring before 2025
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});


// OP4: updateOne() — add discount_percent field
db.products.updateOne(
  { product_id: 1 },
  { $set: { discount_percent: 10 } }
);


// OP5: createIndex on category field
db.products.createIndex({ category: 1 });
