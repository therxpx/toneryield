class FixColumnName < ActiveRecord::Migration
  def up
	rename_column :machines, :mode, :model
  end

  def down
  end
end
