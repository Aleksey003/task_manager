class AddPriorityDeadlineToTasks < ActiveRecord::Migration
  def change
		add_column :tasks, :priority, :integer, :default =>0
		add_column :tasks, :deadline, :date
  end
end
