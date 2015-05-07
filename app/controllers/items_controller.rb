class ItemsController < ApplicationController
  def index
    render :json => Item.all.to_json
  end

  def show
    render json: Item.where(id: params[:id]).first.to_json
  end
end
