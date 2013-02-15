class CreateToners < ActiveRecord::Migration
  def change
    create_table :toners do |t|
      t.string :name
      t.integer :yield

      t.timestamps
    end
  end
end
