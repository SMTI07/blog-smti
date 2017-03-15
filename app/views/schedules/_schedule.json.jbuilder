json.extract! schedule, :id, :title, :date, :archive, :description, :approve, :subject_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)