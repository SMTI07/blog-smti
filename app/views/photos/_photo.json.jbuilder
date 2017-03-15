json.extract! photo, :id, :title, :description, :user_id, :image, :album_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
