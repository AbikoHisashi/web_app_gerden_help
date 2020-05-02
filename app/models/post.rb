class Post < ApplicationRecord

  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true, numericality: :only_integer}
  
  mount_uploader :image, ImageUploader
end
