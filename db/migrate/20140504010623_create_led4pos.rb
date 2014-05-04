class CreateLed4pos < ActiveRecord::Migration
  def change
    create_table :led4pos do |t|
      t.string :on_off

      t.timestamps
    end
  end
end
