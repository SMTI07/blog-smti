class Article < ApplicationRecord

mount_uploader :banner_image_url, ImageUploader 

extend FriendlyId
friendly_id :title, use: :slugged


def should_generate_new_friendly_id?
    title_changed?
end

end
