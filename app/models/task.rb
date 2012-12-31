class Task < ActiveRecord::Base
  attr_accessible :name, :description, :priority, :deadline
	belongs_to :progect
	belongs_to :status
	validates :name, :presence => true
	def add_priority(step)
	 self.priority += step;
	end
end
