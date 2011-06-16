class CreateDoctorSpels < ActiveRecord::Migration
  def self.up
    create_table :doctor_spels do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :doctor_spels
  end
end
