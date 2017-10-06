require 'test_helper'

class CookbookIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cookbook_ingredient = cookbook_ingredients(:one)
  end

  test "should get index" do
    get cookbook_ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_cookbook_ingredient_url
    assert_response :success
  end

  test "should create cookbook_ingredient" do
    assert_difference('CookbookIngredient.count') do
      post cookbook_ingredients_url, params: { cookbook_ingredient: { cookbook_id: @cookbook_ingredient.cookbook_id, ingredient_id: @cookbook_ingredient.ingredient_id } }
    end

    assert_redirected_to cookbook_ingredient_url(CookbookIngredient.last)
  end

  test "should show cookbook_ingredient" do
    get cookbook_ingredient_url(@cookbook_ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_cookbook_ingredient_url(@cookbook_ingredient)
    assert_response :success
  end

  test "should update cookbook_ingredient" do
    patch cookbook_ingredient_url(@cookbook_ingredient), params: { cookbook_ingredient: { cookbook_id: @cookbook_ingredient.cookbook_id, ingredient_id: @cookbook_ingredient.ingredient_id } }
    assert_redirected_to cookbook_ingredient_url(@cookbook_ingredient)
  end

  test "should destroy cookbook_ingredient" do
    assert_difference('CookbookIngredient.count', -1) do
      delete cookbook_ingredient_url(@cookbook_ingredient)
    end

    assert_redirected_to cookbook_ingredients_url
  end
end
