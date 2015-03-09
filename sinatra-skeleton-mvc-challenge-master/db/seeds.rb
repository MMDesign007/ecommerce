# electronics = Category.create!(name: "electronics")
# macbook = electronics.products.create!(name: "MacBook", price: 800, category_id: 1)
# ps3     = electronics.products.create!(name: "PS3", price: 400, category_id: 1)

# bob = User.create!(name:"bob", email: "b@b.com", password_hash: "asdf")
# mike = User.create!(name:"bob", email: "b@m.com", password_hash: "asdf")
# cart1 = Cart.create!(purchaser: mike)
# cart2 = Cart.create!(purchaser: bob)
# lineitem1 = cart1.lineitems.create!(product: macbook)
# lineitem2 = cart1.lineitems.create!(product: ps3)


brian = User.create!(name: "bsheridan12", email: "bsheridan12@gmail.com", password:"test" )
mike = User.create!(name: "mchu0010", email:"m.chu90@gmail.com", password: "test")

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

brians_cart = Cart.create(purchaser: brian)
brians_second_cart = Cart.create(purchaser: brian)
mikes_cart = Cart.create(purchaser: mike)


mikes_first_lineitem = Lineitem.create(cart: mikes_cart, product: airwheel)
mikes_second_lineitem = Lineitem.create(cart: mikes_cart, product: nbak2k15)

brians_first_lineitem = Lineitem.create(cart: brians_cart, product: airwheel)
brians_first_lineitem = Lineitem.create(cart: brians_cart, product: bose)
brians_first_lineitem = Lineitem.create(cart: brians_second_cart, product: dragonage)
