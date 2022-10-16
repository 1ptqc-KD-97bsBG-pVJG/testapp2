class Visit < ApplicationRecord
    has_many :user_visits
    has_many :users, through: :user_visits
    has_many :todos
end
