class Token < ApplicationRecord
    belongs_to :owner
    has_many :authProperties
end
