class CreateTable < ActiveRecord::Migration
  def change
    create_table :encrypts do |t|
      t.string :input_text
    end
  end
end
