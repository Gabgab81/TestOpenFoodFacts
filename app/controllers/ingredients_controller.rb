class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end

    def new
        if params[:query].present?
            @products =  Openfoodfacts::Product.search(params[:query], locale: 'world', page_size: 3)
          else
            @products =  Openfoodfacts::Product.search("chocolat", locale: 'world', page_size: 3)
        end
        # raise
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.new(ingredient_params)
        raise
        # @ingredient.info = param
        @ingredient.save
        redirect_to ingredient_path(@ingredient)
    end

    private

    def ingredient_params
        params.require(:ingredient).permit(:info)
    end

end
