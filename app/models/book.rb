class Book < ApplicationRecord
  
  belongs_to :user
  
  validates :title, presence: true, length: { minimum: 2, maximun: 20}
  validates :opinion, presence: true, length: { maximum: 50}
end
