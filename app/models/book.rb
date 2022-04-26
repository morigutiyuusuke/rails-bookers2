class Book < ApplicationRecord
  belongs_to :user
  
  alidates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }
end
