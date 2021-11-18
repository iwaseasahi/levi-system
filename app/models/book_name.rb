class BookName < ApplicationRecord
  validates :testament, presence: true
  validates :japanese, presence: true, uniqueness: true
  validates :english, presence: true, uniqueness: true
end
