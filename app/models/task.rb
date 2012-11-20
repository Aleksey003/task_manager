class Task < ActiveRecord::Base
  # attr_accessible :title, :body

	belong_to :progect
	belong_to :status
end
