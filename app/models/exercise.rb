class Exercise
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String

  has_one :group

  validates_presence_of :name, :description
end
