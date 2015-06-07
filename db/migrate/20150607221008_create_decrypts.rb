class CreateDecrypts < ActiveRecord::Migration
  def change
    create_table :decrypts do |t|
      t.string :one_time_pad
      t.string :encrypted_message
    end
  end
end
