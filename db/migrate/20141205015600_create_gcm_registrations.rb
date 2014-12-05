class CreateGcmRegistrations < ActiveRecord::Migration
  def change
    create_table :gcm_registrations do |t|
      t.integer :user_id
      t.string :gcm_registration_id

      t.timestamps
    end
  end
end
