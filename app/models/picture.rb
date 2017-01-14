class Picture < ApplicationRecord
  belongs_to :user

  validates :image_url, presence: true,
                        length: { maximum: 255 }
  validates :caption,   presence: true,
                        length: { maximum: 140 }
  validates :user_id,   presence: true      
end
