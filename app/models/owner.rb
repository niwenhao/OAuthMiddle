class Owner < ApplicationRecord
    has_many :tokens
    has_many :services
    has_many :ownerProperties
end
