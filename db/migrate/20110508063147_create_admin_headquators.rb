class CreateAdminHeadquators < ActiveRecord::Migration
  def self.up
    create_table :admin_headquators do |t|
      t.string :name
      t.text :address
      t.integer :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_headquators
  end
end
