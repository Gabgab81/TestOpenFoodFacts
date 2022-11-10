class PagesController < ApplicationController
  def home
    if params[:query].present?
      @products =  Openfoodfacts::Product.search(params[:query], locale: 'world', page_size: 10)
    else
      @products =  Openfoodfacts::Product.search("chocolat", locale: 'world', page_size: 10)
    end
  end
end
