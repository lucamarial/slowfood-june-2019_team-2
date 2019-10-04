starter = Category.create(title: "Starters")
Product.create(title: "Salad", content: "tomatoes, leafs", price: 10, category: starter )


entree = Category.create(title: "Main Dishes")
Product.create(title: "Swedish meatballs", content: "ground beef, parsley, gravy", price: 30, category: entree)
Product.create(title: "Surströmming", content: "herring, misery", price: 30, category: entree)


dessert = Category.create(title: "Desserts")
Product.create(title: "Apple pie", content: "apples, cinnamon, sugar", price: 20, category: dessert)
Product.create(title: "Princess cake", content: "sponge cake, cream, jam", price: 20, category: dessert)