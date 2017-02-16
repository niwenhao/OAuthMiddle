class Owner < ApplicationRecord
    has_many :tokens
    has_many :services
    has_many :ownerProperties

    def self.findByScope(scope)
      owners = Array.new
      OwnerProperty.where(key: 'ScopePattern').each do |property|
        if Regexp.compile(property.strVal) =~ scope then
          owners << property.owner
        end
      end
      if owners.size == 0 then
        return nil
      else
        return owners[0]
      end
    end
end
