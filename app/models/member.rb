class Member < ApplicationRecord
    belongs_to :site
    
    has_many :studio_members
    has_many :studios, through: :studio_members
end
