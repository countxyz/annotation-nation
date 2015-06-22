class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators do |t|
      t.timestamps null: false

      t.string :name, null: false
    end
  end
end
