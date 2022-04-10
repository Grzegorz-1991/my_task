class FirmsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :firms do |t|
      t.text :fimr_name
      t.integer :firm_nip
      t.text :firm_adress_street
      t.integer :firm_adress_street_number
      t.integer :firm_adress_home_number
      t.integer :firm_zip_code
      t.text :firm_city
      t.timestamps
    end
  end
end
