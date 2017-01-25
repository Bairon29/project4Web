class AddReferencesToReview < ActiveRecord::Migration[5.0]
  def change
         add_reference :reviews, :modelling3d, index: true
  end
end
