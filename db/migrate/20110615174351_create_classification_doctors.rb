class CreateClassificationDoctors < ActiveRecord::Migration
  def self.up
    create_table :classification_doctors do |t|
      t.references :town
      t.integer :ophthalmologist
      t.integer :physiologists
      t.integer :neurosurgeons
      t.integer :cardiologist
      t.integer :allopathy
      t.integer :pediatrician
      t.integer :urologists
      t.integer :surgeons
      t.integer :other

      t.timestamps
    end
  end

  def self.down
    drop_table :classification_doctors
  end
end
