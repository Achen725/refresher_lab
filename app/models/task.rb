class Task < ApplicationRecord
    #Relationships
    has_many :chores
    has_many :children, through: :chores

    #Validations
    validates_presence_of :name
    validate_numericality_of :points, :only_integer => true

    #Scopes
    scope :alphabetical, -> { order('name') }
    scope :active, -> { where(active: true) }
  
     
end
