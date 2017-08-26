class ItemsController < ApplicationController
  def index
    @items = Item.published
  end
  def result
    @items = Item.render(params[:number].to_i)
    @items.each do |i|
      i.taken
    end
  end
end
