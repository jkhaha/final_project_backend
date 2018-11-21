class HabitSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :description, :frequency, :start_date, :cue, :routine, :reward
end
