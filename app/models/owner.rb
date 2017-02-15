class Owner < ApplicationRecord
    has_many :tokens
    has_many :services
end
