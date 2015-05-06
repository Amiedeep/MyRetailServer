class ItemsController < ApplicationController
  def index
    render :json => Item.all.to_json
  end

  def show
    item_id = params[:id]
    respond_to do |format|
      format.html
      format.json { render :json => Item.where(id: item_id).first.to_json }
    end
  end
end
