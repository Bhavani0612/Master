class Book < ApplicationRecord

  belongs_to :user

  validates :name, presence: true
  validates :language, presence: true
  validates :edition, presence: true

end
