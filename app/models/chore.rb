class Chore < ApplicationRecord
    
    #Relationships
    belongs_to :child
    belongs_to :task

    #Validations
    validates_date :due_on

    #Scope
    scope :chronological, -> { joins(:task).order('due_on', 'completed') }
    scope :pending, -> { where(completed: false) }
    scope :done, -> { where(completed: true) }

end
