class BookSite < ApplicationRecord
  validates(:title, :presence => true)
  validates(:rating, :presence => true)
  validates(:page_count, :presence => true)
  has_many :reviewer
end


