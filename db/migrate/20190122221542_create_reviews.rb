class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :review_content
      t.belongs_to :user
      t.belongs_to :guitar

      t.timestamps
    end
  end
end
