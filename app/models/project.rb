# Model for Projects Table
class Project < ApplicationRecord
  has_many :demos, inverse_of: :project
  accepts_nested_attributes_for :demos

  mount_uploader :cover, ImageUploader

  validates :title, :skills, :description, presence: true
end
