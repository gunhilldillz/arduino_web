class CreateLed1pos < ActiveRecord::Migration
  def change
    create_table :led1pos do |t|
      t.string :on_off

      t.timestamps
    end
  end
end
