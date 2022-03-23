class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one?(item_name)
        # item = self.freebies.find_by(item_name: item_name)
        # item ? true : false
        self.freebies.pluck(item_names).include?(item.name)
    end

    def give_away(dev, freebie)
        # if self.recieved_one?(freebie.item_name)
        #     freebie.update(dev: dev)
        #     dev.reload
        #     self.reload
        # else
        #     "You can't give away something you don't have!"
        # end
        freebie.update(dev: dev) unless freebie.dev != self
    end

end
