class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
			t.string :name
			t.references :task

      t.timestamps
    end
  end
end
