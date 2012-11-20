class CreateProgects < ActiveRecord::Migration
  def change
    create_table :progects do |t|
      t.string :name
      t.timestamps
    end
  end
end
