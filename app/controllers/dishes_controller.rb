# frozen_string_literal: true

class DishesController < ApplicationController
  def index
    @dishes = Dish.order(:name)
  end

  def show; end
end
