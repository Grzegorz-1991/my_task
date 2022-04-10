class ChangeFirmNameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :firms, :fimr_name, :firm_name
    change_column :firms, :firm_zip_code, :string
  end
end
