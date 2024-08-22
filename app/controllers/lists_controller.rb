class ListsController < ApplicationController
  before_action :set_list, only: %i[ show ]
  def index
    @list = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path, notice: 'List created!'
    else
      render :new, status: :unprocessable_entity
    end
  end
end
