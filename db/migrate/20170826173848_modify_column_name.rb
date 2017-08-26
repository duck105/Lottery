class ModifyColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :items, :is_public, :hide
  end
end
