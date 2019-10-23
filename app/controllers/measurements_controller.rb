# frozen_string_literal: true

class MeasurementsController < ApplicationController
  def index
    @measurements = Measurement.order(:name).page params[:page]
  end

  def show
    @measurement = Measurement.find(params[:id])
  end
end
