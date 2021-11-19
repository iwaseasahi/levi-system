class Bookmark < ApplicationRecord
  belongs_to :folder, dependent: :destroy

  validates :title, presence: true
  validates :action_name, presence: true
  validates :controller_name, presence: true
  validates :params_value, exclusion: { in: [nil] }
  validates :position, presence: true
end
