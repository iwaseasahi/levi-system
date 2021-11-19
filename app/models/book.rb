class Book < ApplicationRecord
  belongs_to :book_name, dependent: :destroy

  validates :version, presence: true, uniqueness: { scope: [:book_name_id, :chapter, :verse],
                                                    message: "御言葉の箇所は訳によって一意である必要があります" }
  validates :chapter, presence: true
  validates :verse, presence: true
end
