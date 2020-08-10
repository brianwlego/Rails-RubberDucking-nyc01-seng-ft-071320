class Student < ApplicationRecord
  has_many :ducks
  validates :name, :mod, presence: true
  validates :name, uniqueness: true
  validates :mod, inclusion: { in: 1..5 }

  def ducks_attributes=(ducks_attributes)
    ducks_attributes.values.each do |duck_attributes|
      self.ducks.build(duck_attributes)
    end
  end


end
