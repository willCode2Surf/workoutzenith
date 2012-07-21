class Exercise
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String

  belongs_to :group

  validates_presence_of :name, :description, :group
end
