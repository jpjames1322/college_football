class College < ApplicationRecord
  validates :team, presence: true, length: {maximum: 100, minimum: 3}
  validates :mascot, presence: true, length: {maximum: 50, minumum: 3}
end
