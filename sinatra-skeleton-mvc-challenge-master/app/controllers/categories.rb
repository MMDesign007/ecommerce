get '/' do
  @categories = Category.all
  @products = @categories.products
end