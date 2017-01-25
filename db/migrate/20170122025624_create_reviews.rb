class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews, force: :cascade do |t|
      t.string :name
      t.string :model
      t.string :review

      t.timestamps
    end
  end
end
