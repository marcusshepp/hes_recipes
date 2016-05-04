class Recipe < ActiveRecord::Base
    has_many :ingredients, :order => 'sequence'
    has_many :steps, :order => 'sequence'
    accepts_nested_attributes_for :ingredients,
        :allow_destroy => true,
        :reject_if => :all_blank
    accepts_nested_attributes_for :steps,
        :allow_destroy => true,
        :reject_if => :all_blank
        
    def total
        if self.cook_time
            return self.cook_time + self.prep_time
        else
            return self.prep_time
        end
    end
end
