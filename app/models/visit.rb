class Visit < ApplicationRecord
    has_many :user_visits
    has_many :users, through: :user_visits
    has_many :todos
    has_many :time_entries
    accepts_nested_attributes_for :todos

    # def todos 
    #     [@todo1, @todo2]
    # end
    # def todo_attributes=(todo_attributes)
    #     todo_attributes.values.each do |i, todo_attributes|
    #         self.todos.build(todo_attributes)
    #     end
    # end
end
