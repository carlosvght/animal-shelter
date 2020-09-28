class Animal < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, :kind, :gender, presence: true
end
