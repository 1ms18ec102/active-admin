class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.belongs_to :book

      t.timestamps
    end
  end
end
