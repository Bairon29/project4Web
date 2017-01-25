class CreateModelling3ds < ActiveRecord::Migration[5.0]
  def change
    create_table :modelling3ds do |t|
      t.string :name
      t.string :attachment
      t.integer :downloads
      t.string :category
      t.string :filetype

      t.timestamps
    end
  end
end
