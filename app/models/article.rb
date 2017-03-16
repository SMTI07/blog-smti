class Article < ApplicationRecord



extend FriendlyId
friendly_id :title, use: :slugged

mount_uploader :banner_image_url, ImageUploader 

has_many :taggings
has_many :tags, through: :taggings


def should_generate_new_friendly_id?
    title_changed?
end


def all_tags=(names)
  self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
  end
end

def all_tags
  self.tags.map(&:name).join(", ")
end

def self.tagged_with(name)
  Tag.find_by_name!(name).articles
end

end
