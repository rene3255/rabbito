class AddFolioToSupply < ActiveRecord::Migration[7.0]
  def change
    add_column :supplies, :folio, :string
  end
end
