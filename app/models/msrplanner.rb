class Msrplanner < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :doctor_spel
end
