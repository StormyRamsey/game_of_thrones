class House < ApplicationRecord
  has_many :characters
  validates :name, presence: true,
                  length: { minimum: 5 }
end
