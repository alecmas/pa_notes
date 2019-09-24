class Rotation < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :user, presence: true # must have a user
end
