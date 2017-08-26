class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :amount
      t.boolean :is_public

      t.timestamps
    end
  end
end
