class Todo < ApplicationRecord
  belongs_to :visit
  belongs_to :completed_by
end
