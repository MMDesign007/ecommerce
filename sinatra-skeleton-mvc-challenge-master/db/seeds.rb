
nadia = User.create!(email: "nadia.bajwa@gmail.com", password:"test" )
miriam = User.create!(email:"m@gmail.com", password: "test")

transportation = Category.create(name: "Transportation")
video_games = Category.create(name: "Video Games")
electronics = Category.create(name: "Electronics")


airwheel = Product.create(price: 500, name: "AirWhell", category: transportation)
razor_scooter = Product.create(price:30, name: "Razor Scooter", category: transportation)
rollerblades = Product.create(price:75, name: "Roller Blades", category: transportation)
dragonage = Product.create(price: 60, name: "Dragonage", category: video_games)
nbak2k15 = Product.create(price: 30, name: "NBA 2K15", category: video_games)
bose = Product.create(price: 300, name: "Bose Overear Headphones", category: electronics)
# mac = Product.create(price: 1200, name: "MacBook Pro", category: electronics)

nadias_cart = Cart.create(purchaser: nadia)
nadias_second_cart = Cart.create(purchaser: nadia)
miriams_cart = Cart.create(purchaser: miriam)


miriams_first_ListItem = ListItem.create(cart: miriams_cart, product: airwheel)
miriams_second_ListItem = ListItem.create(cart: miriams_cart, product: nbak2k15)

nadias_first_ListItem = ListItem.create(cart: nadias_cart, product: airwheel)
nadias_first_ListItem = ListItem.create(cart: nadias_cart, product: bose)
nadias_first_ListItem = ListItem.create(cart: nadias_second_cart, product: dragonage)
