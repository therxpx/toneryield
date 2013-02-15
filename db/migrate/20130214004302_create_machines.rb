class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :mode
      t.integer :toner_id

      t.timestamps
    end
  end
end
