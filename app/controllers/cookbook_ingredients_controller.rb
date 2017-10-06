class CookbookIngredientsController < ApplicationController
  before_action :set_cookbook_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /cookbook_ingredients
  # GET /cookbook_ingredients.json
  def index
    @cookbook_ingredients = CookbookIngredient.all
  end

  # GET /cookbook_ingredients/1
  # GET /cookbook_ingredients/1.json
  def show
  end

  # GET /cookbook_ingredients/new
  def new
    @cookbook_ingredient = CookbookIngredient.new
  end

  # GET /cookbook_ingredients/1/edit
  def edit
  end

  # POST /cookbook_ingredients
  # POST /cookbook_ingredients.json
  def create
    @cookbook_ingredient = CookbookIngredient.new(cookbook_ingredient_params)

    respond_to do |format|
      if @cookbook_ingredient.save
        format.html { redirect_to @cookbook_ingredient, notice: 'Cookbook ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @cookbook_ingredient }
      else
        format.html { render :new }
        format.json { render json: @cookbook_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cookbook_ingredients/1
  # PATCH/PUT /cookbook_ingredients/1.json
  def update
    respond_to do |format|
      if @cookbook_ingredient.update(cookbook_ingredient_params)
        format.html { redirect_to @cookbook_ingredient, notice: 'Cookbook ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @cookbook_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @cookbook_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cookbook_ingredients/1
  # DELETE /cookbook_ingredients/1.json
  def destroy
    @cookbook_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to cookbook_ingredients_url, notice: 'Cookbook ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cookbook_ingredient
      @cookbook_ingredient = CookbookIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cookbook_ingredient_params
      params.require(:cookbook_ingredient).permit(:cookbook_id, :ingredient_id)
    end
end
