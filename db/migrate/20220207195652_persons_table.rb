class PersonsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.integer :telephone
      t.string :position
    end
  end
end
