class Folder < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :sticky, inclusion: { in: [true, false] }
end
