class ItemsController < ApplicationController
  def index
    @items = Item.published
  end
  def result
    @item = Item.render
    @item.taken
  end
end
