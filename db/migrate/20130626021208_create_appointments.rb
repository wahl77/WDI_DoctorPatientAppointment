class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :doctor
      t.references :patient

      t.timestamps
    end
    add_index :appointments, :doctor_id
    add_index :appointments, :patient_id
  end
end
