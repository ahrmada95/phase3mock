class Dev < ActiveRecord::Base
    has_many :freebies 
    has_many :companies, through: :freebies 

    def received_one?(item_name)
        return self.freebies.map {|freebie| freebie.item_name}.include?(item_name)
    end    

    def give_away (dev, freebie)
        if freebie.dev_id == self.id 
            freebie.dev_id = dev.id
        end
    end
end
