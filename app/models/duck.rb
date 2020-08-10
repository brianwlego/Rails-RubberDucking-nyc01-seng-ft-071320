class Duck < ApplicationRecord
  belongs_to :student

  validates :name, :description, presence: true
  validates :name, uniqueness: true
  validates :description, length: { in: 10..250 }
  validates :name, :description, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
