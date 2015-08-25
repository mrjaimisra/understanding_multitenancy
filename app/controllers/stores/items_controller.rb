class Stores::ItemsController < ApplicationController
  def index
    Store.find_by(url: params[:store])
  end
end
