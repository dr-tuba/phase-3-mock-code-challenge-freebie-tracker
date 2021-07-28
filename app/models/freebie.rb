class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    def print_details
        "#{dev.name} owns a(n) #{item_name} from #{self.company.name}"
    end
end
