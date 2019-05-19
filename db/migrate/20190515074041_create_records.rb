class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.string :task
      t.integer:hour
      t.integer :minute
      t.timestamps
    end
  end
end
