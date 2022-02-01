class Solution < ApplicationRecord
  belongs_to :enrollment
  belongs_to :activity

  validates :attachment, presence: true
  validates :score, presence: true
end
