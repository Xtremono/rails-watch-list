class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniquess: { scope: :list_id, message: 'can only be added once to a list'}
end
