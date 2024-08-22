class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :movie, presence: true, uniqueness: { scope: :list }
  validates :comment, presence: true, length: { minimum: 6 }
end
