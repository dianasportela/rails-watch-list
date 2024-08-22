class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks
  validades :name, uniqueness: true, presence: true
end
