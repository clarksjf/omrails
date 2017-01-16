class Tweet < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  has_attached_file :image 

  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/ sam changed to below.
  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }

end
