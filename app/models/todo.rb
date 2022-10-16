class Todo < ApplicationRecord
  belongs_to :visit
  belongs_to :users
end
