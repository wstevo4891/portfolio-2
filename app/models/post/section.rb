# Model for Blog Post sections
class Post::Section < ApplicationRecord
  belongs_to :post

  mount_uploader :image, ImageUploader

  def self.attributes
    attribute_names.map(&:to_sym)
  end
end
