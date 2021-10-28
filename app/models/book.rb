class Book < ApplicationRecord
  
  belongs_to :user
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  validates :title, presence: true, length: { minimum: 2, maximun: 20}
  validates :opinion, presence: true, length: { maximum: 50}
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
