# Blog Post model
class Post < ApplicationRecord
  has_many :sections, inverse_of: :post
  accepts_nested_attributes_for :sections,
                                reject_if: :all_blank,
                                allow_destroy: true

  mount_uploader :cover, ImageUploader

  validates :title, :date, :body, presence: true
end
