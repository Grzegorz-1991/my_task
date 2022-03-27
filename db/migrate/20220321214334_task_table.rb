class TaskTable < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :state
      t.string :descripton
      t.datetime :date_of_order
      t.datetime :start_date
      t.datetime :end_time
    end
  end
end
