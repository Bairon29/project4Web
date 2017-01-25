class Review < ApplicationRecord
  validates :review, :presence => true
  belongs_to :modelling3d
end
