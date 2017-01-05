class Tweet < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  has_attached_file :image 
  :url =>':s3_domain_url'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
