class Dev < ActiveRecord::Base
    has_many :freebies, dependent: :destroy
    has_many :companies, through: :freebies

    def received_one?(item_name)
        freebies.all? {|freebie| freebie.item_name == item_name}
    end

    def give_away(dev, freebie)
        Freebie.update(freebie.id, dev_id: dev.id)
    end
end
