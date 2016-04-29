class Recipe < ActiveRecord::Base
    has_many :ingredients
    has_many :steps
    def total
        return self.cook_time + self.prep_time
    end
end
