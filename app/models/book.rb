class Book < ApplicationRecord
  
  belongs_to :user
  has_many :book_comments, dependent: :destroy
  
  validates :title, presence: true, length: { minimum: 2, maximun: 20}
  validates :opinion, presence: true, length: { maximum: 50}
end
