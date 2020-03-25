class AddAttachmentImageUrlToPosts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :posts do |t|
      t.attachment :image_url
    end
  end

  def self.down
    remove_attachment :posts, :image_url
  end
end
