class HabitSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :description, :cue, :routine, :reward
end
