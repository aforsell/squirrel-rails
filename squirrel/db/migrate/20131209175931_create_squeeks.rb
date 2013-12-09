class CreateSqueeks < ActiveRecord::Migration
  def change
    create_table :squeeks do |t|
      t.string :user
      t.text :message

      t.timestamps
    end
  end
end
