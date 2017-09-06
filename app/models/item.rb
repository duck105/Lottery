class Item < ApplicationRecord
  scope :published, -> {where(hide: false)}

  def self.render(number)
    items = Item.published
    list = items.flat_map{|x| [x]*(x.amount) }
    return list.sample(number)
  end

  def taken
    self.amount -= 1
    save
  end

  def given
    self.amount += 1
    save
  end
end
