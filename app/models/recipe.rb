class Recipe < ActiveRecord::Base
    has_many :ingredients, :order => 'sequence'
    has_many :steps, :order => 'sequence'
    def total
        if self.cook_time
            return self.cook_time + self.prep_time
        else
            return self.prep_time
        end
    end
end
