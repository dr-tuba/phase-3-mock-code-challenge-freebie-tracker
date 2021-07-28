class Company < ActiveRecord::Base
    has_many :freebies, dependent: :destroy
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        Freebie.new(dev_id: dev.id, company_id: id, item_name: item_name, value: value)
    end

    def self.oldest_company
        self.find_by(founding_year: self.all.minimum(:founding_year))
    end
end
