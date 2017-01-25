class AddDetailsToModellings3d < ActiveRecord::Migration[5.0]
  def change
    add_column :modelling3ds, :description, :string
    add_column :modelling3ds, :image1, :string
    add_column :modelling3ds, :image2, :string
    add_column :modelling3ds, :image3, :string
  end
end
