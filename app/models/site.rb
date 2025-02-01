class Site < ApplicationRecord
    belongs_to :borough
    has_many :studios
end
