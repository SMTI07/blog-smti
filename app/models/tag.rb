class Tag < ApplicationRecord


has_many :taggings
has_many :articles, through: :taggings

def self.counts
  self.select("tags.name, count(taggings.tag_id) as count").joins(:taggings).group("taggings.tag_id, tags.name")
end

end
