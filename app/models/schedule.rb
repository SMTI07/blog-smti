class Schedule < ApplicationRecord
  belongs_to :subject
  mount_uploader :archive, FileUploader
end
