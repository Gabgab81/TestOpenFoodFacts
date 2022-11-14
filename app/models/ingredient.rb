class Ingredient < ApplicationRecord
    serialize :info

    validates :code, presence: true, length: { is: 13 }
end
