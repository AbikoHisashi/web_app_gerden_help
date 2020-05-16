class AddComulnPhotoToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :img, :stiring
  end
end
