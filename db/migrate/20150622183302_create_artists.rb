class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.timestamps null: false

      t.string :name, null: false

      t.references :artistable, index: true, polymorphic: true
    end
  end
end
