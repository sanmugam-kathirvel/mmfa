class CreateStocks < ActiveRecord::Migration
  def self.up
    create_table :stocks do |t|
      t.float :tft
      t.float :tfs
      t.float :vrx
      t.float :lux
      t.float :nur_xl
      t.float :cof
      t.float :ele

      t.timestamps
    end
  end

  def self.down
    drop_table :stocks
  end
end
