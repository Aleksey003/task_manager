class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
			t.string :name
			t.references :progect
			t.references :status
			t.text :description
      t.timestamps
    end
  end
end
