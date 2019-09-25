class College < ApplicationRecord
  validates :team, :mascot, presence: true, length: {maximum: 100, minimum: 3}
end
