# Model for Project Demo sections
class Project::Demo < ApplicationRecord
  belongs_to :project

  def self.attributes
    attribute_names.map(&:to_sym)
  end
end
