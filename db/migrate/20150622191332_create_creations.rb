class CreateCreations < ActiveRecord::Migration
  def change
    create_table :creations do |t|
      t.timestamps null: false

      t.string :title,    null: false
      t.text   :creation, null: false

      t.references :creator, index: true
    end
  end
end
