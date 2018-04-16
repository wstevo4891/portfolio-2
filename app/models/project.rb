# Model for Projects Table
class Project < ApplicationRecord
  TECH_OPTIONS = [
    'Ruby on Rails', 'JavaScript', 'HTML5', 'CSS3', 'SASS',
    'NodeJS', 'ReactJS', 'jQuery', 'Bootstrap', 'Heroku'
  ].freeze

  has_many :demos, inverse_of: :project

  accepts_nested_attributes_for :demos

  mount_uploader :cover, ImageUploader

  validates :title, :cover, :description, presence: true
end
