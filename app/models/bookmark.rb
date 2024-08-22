class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :movie, presence: true
  validates :movie, uniqueness: { scope: :list }
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
end
