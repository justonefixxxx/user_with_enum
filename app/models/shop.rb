class Shop < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, email: true
  enum region: [:kiev, :dnepr, :crimea]
end
