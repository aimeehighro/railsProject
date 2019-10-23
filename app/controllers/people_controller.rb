# frozen_string_literal: true

class PeopleController < ApplicationController
  def index
    @people = Person.order(:name).page params[:page]
  end

  def show
    @person = Person.find(params[:id])
  end
end
