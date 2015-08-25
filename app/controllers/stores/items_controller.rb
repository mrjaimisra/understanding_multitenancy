class Stores::ItemsController < ApplicationController
  def index
    @items = current_store.items
  end

  def show
    @item = current_store.items.find_by(id: params[:id])

    redirect_to store_items_path(store: current_store.url), notice: "Item not found." if @item.nil?
  end

  def private

    def current_store
      @current_store ||= Store.find_by(url: params[:store])
    end
  end
end
