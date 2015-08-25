class Stores::ItemsController < ApplicationController
  def index
    store = Store.find_by(url: params[:store])
    @items = store.items
  end

  def show
    store = Store.find_by(url: params[:store])
    @item = store.items.find_by(id: params[:id])

    redirect_to store_items_path(store: store.url) if @item.nil?
  end
end
