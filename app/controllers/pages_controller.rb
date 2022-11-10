class PagesController < ApplicationController
  def home
    @products =  Openfoodfacts::Product.search("Chocolate", locale: 'world', page_size: 3)
  end
end
