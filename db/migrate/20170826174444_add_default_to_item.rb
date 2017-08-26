class AddDefaultToItem < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :hide, :boolean, default: false
  end
end
