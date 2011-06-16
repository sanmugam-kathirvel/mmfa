class CreateMsrplanners < ActiveRecord::Migration
  def self.up
    create_table :msrplanners do |t|
      t.references :doctor
      t.references :doctor_spel
      t.float :tft
      t.float :tfs
      t.float :vrx
      t.float :lux
      t.float :nurxl
      t.float :cof
      t.float :ele

      t.timestamps
    end
  end

  def self.down
    drop_table :msrplanners
  end
end
