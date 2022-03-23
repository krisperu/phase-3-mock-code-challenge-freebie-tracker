class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies
    
        def self.oldest_company
            self.all.min_by { |c| c.founding_year }
        end

    def give_freebie(dev, item_name, value)
        self.freebies.create(dev: dev, item_name: item_name, value: value)
    end
end
