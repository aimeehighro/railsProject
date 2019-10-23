# frozen_string_literal: true

class PeopleController < ApplicationController
  def index
    if params[:search]
      @people = Person.search(params[:search]).order(:name).page params[:page]
    else
    @people = Person.order(:name).page params[:page]
    end
  end

  def show
    @person = Person.find(params[:id])
  end
end
