class CreateTourprograms < ActiveRecord::Migration
  def self.up
    create_table :tourprograms do |t|
      t.references :town
      t.string :headquators
      t.string :Distance
      t.float :Fare
      t.integer :no_of_visited_doctors

      t.timestamps
    end
  end

  def self.down
    drop_table :tourprograms
  end
end
