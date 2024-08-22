class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @restaurant.save
      redirect_to
    else
      render :new, status: :unprocessable_entity
    end
  end
end
