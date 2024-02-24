class Book < ApplicationRecord
  belongs_to :users

  validates :title, presence: true
  validates :body, presence: true
end
