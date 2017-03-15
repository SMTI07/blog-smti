class AddBannerImageUrl < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :banner_image_url, :string
  end
end
