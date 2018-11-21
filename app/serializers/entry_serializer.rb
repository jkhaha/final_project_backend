class EntrySerializer < ActiveModel::Serializer
  attributes :id, :habit_id, :completed_status, :date_time
end
