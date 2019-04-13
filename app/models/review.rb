class Review < ApplicationRecord
    
    belongs_to :drill;
    belongs_to :user;
    
end
