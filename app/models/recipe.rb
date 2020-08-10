class Recipe < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true
  validate :picture_size
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
  has_many :comments
  acts_as_taggable

  # attr_accessible :tag_checkbox
  attr_accessor :lactoce_free
  attr_accessor :gluten_free
  attr_accessor :vegetarian
  attr_accessor :vegan

  private

  # validate the size of the uploaded picture
  def picture_size
    errors.add(:picture, 'should be less than 5MB') if picture.size > 5.megabytes
  end
end
