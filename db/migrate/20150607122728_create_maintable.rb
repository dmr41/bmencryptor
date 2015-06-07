class CreateMaintable < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.string :input_text
      t.string :otp
      t.string :output_text
    end
  end
end
