class Folder < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :sticky, presence: true
end
