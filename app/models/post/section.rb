# Model for Blog Post sections
class Post::Section < ApplicationRecord
  belongs_to :post

  def self.attributes
    attribute_names.map(&:to_sym)
  end
end
