# frozen_string_literal: true

class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.order(:name).page params[:page]
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end
