class ItemsController < ApplicationController
  def index
    @items = Item.published
  end
  def result
    @items = Item.render(params[:number].to_i)
    data = @items.map(&:name).join(",")
    Log.create(data: data)
    @items.each do |i|
      i.taken
    end
  end
end
