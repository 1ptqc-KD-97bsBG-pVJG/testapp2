class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_visits
  has_many :visits, through: :user_visits
  has_many :todos
  has_many :time_entries

  after_create :assign_default_role

  def assign_default_role
    self.add_role(:customer) if self.roles.blank?
  end
end
