# Model for Contact Email Information
class Contact
  include ActiveModel::Model

  attr_accessor :name, :email, :message

  validates_presence_of :name, :email, :message
end
