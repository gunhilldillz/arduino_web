class CreateLed3pos < ActiveRecord::Migration
  def change
    create_table :led3pos do |t|
      t.string :on_off

      t.timestamps
    end
  end
end
