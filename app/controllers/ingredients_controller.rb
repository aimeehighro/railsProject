# frozen_string_literal: true

class IngredientsController < ApplicationController
  def index
    if params[:search]
      @ingredients = Ingredient.search(params[:search]).order(:name).page params[:page]
    else
      @ingredients = Ingredient.order(:name).page params[:page]
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end
