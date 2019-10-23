# frozen_string_literal: true

class DishesController < ApplicationController
  def index
    @dishes = if params[:search]
                Dish.search(params[:search]).order(:name).page params[:page]
              else
                Dish.order(:name).page params[:page]
              end
  end

  def show
    @dish = Dish.find(params[:id])
  end
end
