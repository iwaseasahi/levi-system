class BookName < ApplicationRecord
  validates :testament, presence: true
  validates :japanese, presence: true
  validates :english, presence: true
end
