# frozen_string_literal: true

class MeasurementsController < ApplicationController
  def index
    if params[:search]
      @measurements = Measurement.search(params[:search]).order(:name).page params[:page]
    else
      @measurements = Measurement.order(:name).page params[:page]
    end
  end

  def show
    @measurement = Measurement.find(params[:id])
  end
end
