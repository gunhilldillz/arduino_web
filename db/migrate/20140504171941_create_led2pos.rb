class CreateLed2pos < ActiveRecord::Migration
  def change
    create_table :led2pos do |t|
      t.string :on_off

      t.timestamps
    end
  end
end
