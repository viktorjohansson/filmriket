class MovieComment < ActiveRecord::Base
  validates :message, presence: true

  belongs_to :user
  belongs_to :movie
end
