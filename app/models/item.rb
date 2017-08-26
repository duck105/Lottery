class Item < ApplicationRecord
  scope :published, -> {where(hide: false)}

  def self.render
    items = Item.published
    list = items.flat_map{|x| [x]*(x.amount) }
    return list.sample
  end

  def taken
    self.amount -= 1
    save
  end
end
