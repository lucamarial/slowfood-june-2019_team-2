starter = Category.create(title: "Starters")
Product.create(name: "Salad", description: "tomatoes, leafs", price: 10, category: starter )


entree = Category.create(title: "Main Dishes")
Product.create(name: "Swedish meatballs", description: "ground beef, parsley, gravy", price: 30, category: entree)
Product.create(name: "Surströmming", description: "herring, misery", price: 30, category: entree)


dessert = Category.create(title: "Desserts")
Product.create(name: "Apple pie", description: "apples, cinnamon, sugar", price: 20, category: dessert)
Product.create(name: "Princess cake", description: "sponge cake, cream, jam", price: 20, category: dessert)