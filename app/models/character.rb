class Character < ApplicationRecord
    has_many :gatherers, dependent: :destroy
end
