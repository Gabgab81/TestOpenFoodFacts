class PagesController < ApplicationController
  def home
    @products =  Openfoodfacts::Product.search("boucher beef", locale: 'world', page_size: 10)
  end
end
