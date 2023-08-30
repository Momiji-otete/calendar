class Plan < ApplicationRecord
  belongs_to :user
  
    
  validates :title, presence: true
  validates :date_time, presence: true

end
