class Modelling3d < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true
  has_many :reviews
end
