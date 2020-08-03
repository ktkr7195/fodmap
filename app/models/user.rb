class User < ApplicationRecord
  has_many :recipes, dependent: :destroy
  has_many :active_relationships, class_name: 'Relationship',
                                  foreign_key: 'follower_id',
                                  dependent: :destroy
  has_many :passive_relationships, class_name: 'Relationship',
                                   foreign_key: 'followed_id',
                                   dependent: :destroy

  has_many :recipes
  has_many :likes, dependent: :destroy
  has_many :like_recipes, through: :likes
  has_many :comments

  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  validates :firstName, presence: true
  validates :firstName, length: { maximum: 20 }
  validates :lastName, presence: true
  validates :lastName, length: { maximum: 20 }
  validates :password, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

  def feed
    following_ids = "SELECT followed_id FROM relationships
    WHERE follower_id = :user_id"
    Recipe.where("user_id IN (#{following_ids})
    OR user_id = :user_id", user_id: id)
  end

  # ユーザーをフォローする
  def follow(other_user)
    following << other_user
  end

  # ユーザーをフォロー解除する
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # 現在のユーザーがフォローしてたらtrueを返す
  def following?(other_user)
    following.include?(other_user)
  end
end
