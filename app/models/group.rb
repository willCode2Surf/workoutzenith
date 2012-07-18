class Group
  include Mongoid::Document
  field :name, :type => String

  has_many :exercises
end
