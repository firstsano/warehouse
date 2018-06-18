class CreateStorages < ActiveRecord::Migration[5.2]
  def change
    create_table :storages do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end

    add_index :storages, :name, unique: true
  end
end
