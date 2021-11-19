class Book < ApplicationRecord
  belongs_to :book_name, dependent: :destroy

  validates :version, presence: true
  validates :chapter, presence: true
  validates :verse, presence: true
end
