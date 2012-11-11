class ExerciseSerializer < ActiveModel::Serializer
  embed :ids
  attributes :_id, :name, :description

  has_one :group, :key => :group_id, :include  => true, :root => :groups
end
