class Freebie < ActiveRecord::Base
    belongs_to :company #note singular since it can only belong to one company 
    belongs_to :dev #note singular since it can only belong to one dev
  
    def print_details 
        return "#{dev.name} owns a #{self.item_name} from #{company.name}"
    end
end
