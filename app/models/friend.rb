class Friend < ApplicationRecord
    validates :fname, presence: true
    validates :lname, presence: true
end
