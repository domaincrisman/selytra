class RenameColumnIbaninTableemployeestoiban < ActiveRecord::Migration[5.2]
  def change
  	rename_column :employees, :Iban, :iban
  end
end
