class Stores::ItemsController < ApplicationController
  def index
    store = Store.find_by(url: params[:store])
    @items = store.items
  end
end
