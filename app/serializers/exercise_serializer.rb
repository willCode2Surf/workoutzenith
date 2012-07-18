class ExerciseSerializer < ActiveModel::Serializer
  attributes :_id, :name, :description

  has_one :group
end
