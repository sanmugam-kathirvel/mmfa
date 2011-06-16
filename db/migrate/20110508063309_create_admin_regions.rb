class CreateAdminRegions < ActiveRecord::Migration
  def self.up
    create_table :admin_regions do |t|
      t.references :headquator
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_regions
  end
end
