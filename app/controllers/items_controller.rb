class ItemsController < ApplicationController
  def index
  end
  def result
    @item = Item.render
    @item.taken
  end
end
