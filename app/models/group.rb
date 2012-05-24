class Group
  include Mongoid::Document
  field :name, :type => String

  belongs_to :exercise
end
