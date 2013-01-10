class Task < ActiveRecord::Base
  attr_accessible :name, :description, :priority, :deadline

	validates :name, :presence=>true, :length => {:maximum=> 50}
  validates :description, :presence=>true, :length => {:maximum=> 250}

	belongs_to :progect
	belongs_to :status

	def add_priority(step)
	 self.priority += step;
	end

end
