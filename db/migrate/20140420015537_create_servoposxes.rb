class CreateServoposxes < ActiveRecord::Migration
  def change
    create_table :servoposxes do |t|
      t.integer :xloc

      t.timestamps
    end
  end
end
