class CreateStandaredVisits < ActiveRecord::Migration
  def self.up
    create_table :standared_visits do |t|
      t.references :doctor
      t.references :doctor
      t.references :doctor_spel
      t.string :call
      t.string :product1
      t.string :product2
      t.string :product3
      t.string :month_of_visit
      t.float :amc

      t.timestamps
    end
  end

  def self.down
    drop_table :standared_visits
  end
end
