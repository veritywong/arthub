class Studio < ApplicationRecord
    belongs_to :site

    has_many :studio_members
    has_many :members, through: :studio_members
end
