class CreateCreations < ActiveRecord::Migration
  def change
    create_table :creations do |t|
      t.timestamps null: false

      t.string :author, null: false
      t.string :title,  null: false
      t.text   :work,   null: false

      t.references :user, index: true
    end
  end
end
