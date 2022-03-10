class ChangeColumnFolioToString < ActiveRecord::Migration[7.0]
  def change
    change_column :supplies, :folio, :string

  end
end
