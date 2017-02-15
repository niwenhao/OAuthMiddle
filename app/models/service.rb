class Service < ApplicationRecord
  belongs_to :owner
  has_many :scopes
end
