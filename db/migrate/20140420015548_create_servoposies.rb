class CreateServoposies < ActiveRecord::Migration
  def change
    create_table :servoposies do |t|
      t.integer :yloc

      t.timestamps
    end
  end
end
