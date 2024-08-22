class List < ApplicationRecord
  has_many :bookmarks
  validades :name, uniqueness: true, presence: true
end
