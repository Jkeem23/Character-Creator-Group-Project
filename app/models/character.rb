class Character < ApplicationRecord
    has_many :gatherers, dependent: :destroy
    
    validates_length_of :name, 
        :within => 3..12,
        :too_short => 'Your name has to be longer than 3 characters',
        :too_long => 'Your name has to be shorter than 12 characters'
        :too_low
    
    validates :strength, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5, :message => "must be from 0 to 5"}
    validates :perception, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5, :message => "must be from 0 to 5"}
    validates :endurance, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5, :message => "must be from 0 to 5"}
    validates :charisma, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5, :message => "must be from 0 to 5"}
    validates :intelligence, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5, :message => "must be from 0 to 5"}
    validates :agility, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5, :message => "must be from 0 to 5"}
    validates :luck, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5, :message => "must be from 0 to 5"}
    
end
