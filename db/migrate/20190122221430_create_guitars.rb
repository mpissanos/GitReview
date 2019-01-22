class CreateGuitars < ActiveRecord::Migration[5.2]
  def change
    create_table :guitars do |t|
      t.string :brand
      t.string :model_name
      t.float :price

      t.timestamps
    end
  end
end
