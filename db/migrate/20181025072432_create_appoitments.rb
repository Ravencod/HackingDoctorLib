class CreateAppoitments < ActiveRecord::Migration[5.2]
  def change
    create_table :appoitments do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, index: true
      t.belongs_to :city, index: true
      t.datetime :appointment_date
    end
  end
end
