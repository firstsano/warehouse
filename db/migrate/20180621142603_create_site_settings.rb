class CreateSiteSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :site_settings do |t|
      t.string :name, null: false
      t.text :value

      t.timestamps
    end

    add_index :site_settings, :name, unique: true
  end
end
