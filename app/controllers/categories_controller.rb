class CategoriesController < ApplicationController
  def index
    render json: Category.all.to_json
  end

  def show
    render json: Category.where(id: params[:id]).first.to_json
  end
end
