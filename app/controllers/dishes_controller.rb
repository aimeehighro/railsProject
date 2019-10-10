# frozen_string_literal: true

class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def show; end
end
