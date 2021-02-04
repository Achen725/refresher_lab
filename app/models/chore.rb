class Chore < ApplicationRecord
    
    #Relationships
    belongs_to :child
    belongs_to :task

    #Validations
    validates_date :due_on

    #Scope
    scope :by_task, -> { joins(:task).order('tasks.name') }
    scope :past, -> { where('due_on < ?', Date.today.to_date) }
    scope :upcoming, -> { where('due_on >= ?', Date.today.to_date) }
    scope :chronological, -> { joins(:task).order('due_on', 'completed') }
    scope :pending, -> { where(completed: false) }
    scope :done, -> { where(completed: true) }

end
