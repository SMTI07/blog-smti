class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :user_id, :image
  has_one :album
end
