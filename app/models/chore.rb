class Chore < ApplicationRecord
    
    #Relationships
    belongs_to :child
    belongs_to :task

    #Validations
    validates_date :due_on

    #Scope

end
