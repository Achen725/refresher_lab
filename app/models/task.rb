class Task < ApplicationRecord
    #Relationships
    has_many :chores
    has_many :children, through: :chores

    #Validations
    validates_presence_of :name

end
