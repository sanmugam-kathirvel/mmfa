class CreateDoctors < ActiveRecord::Migration
  def self.up
    create_table :doctors do |t|
      t.string :name
      t.references :doctor_spel
      t.text :address
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :doctors
  end
end
