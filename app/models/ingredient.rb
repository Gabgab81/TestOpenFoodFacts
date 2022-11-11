class Ingredient < ApplicationRecord
    serialize :info

    validates :info, presence: true
end
