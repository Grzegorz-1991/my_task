class CreateSteps < ActiveRecord::Migration[6.1]
  def change
    create_table :steps do |t|
      t.text :content
      t.text :worker
      t.belongs_to :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
