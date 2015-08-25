class Stores::ItemsController < ApplicationController
  def index
    store = Store.find_by(url: params[:store])
    @items = store.items
  end

  def show
    store = Store.find_by(url: params[:store])
    @item = store.items.find(params[:id])
  end
end
