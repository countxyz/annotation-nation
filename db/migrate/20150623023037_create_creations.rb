class CreateCreations < ActiveRecord::Migration
  def change
    create_table :creations do |t|
      t.timestamps null: false

      t.string :creator,  null: false
      t.string :title,    null: false
      t.text   :creation, null: false

      t.references :user, index: true
    end
  end
end
