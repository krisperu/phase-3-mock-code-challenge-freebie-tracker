class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one?(item_name)
        item = self.freebies.find_by(item_name: item_name)
        # item ? true : false
    end

    def give_away(dev, freebie)
        
    end

end
