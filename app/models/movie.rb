class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, :ovewview, :poster_url, :rating, presence: true
  validates :title, :overview, uniqueness: true
end
