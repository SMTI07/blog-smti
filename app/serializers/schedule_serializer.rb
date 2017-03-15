class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :archive, :description, :approve
  has_one :subject
end
