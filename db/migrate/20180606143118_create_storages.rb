class CreateStorages < ActiveRecord::Migration[5.2]
  def change
    create_table :storages do |t|
      t.string :name, null: false
      t.index :name
      t.boolean :is_default, default: false
      t.text :description

      t.timestamps
    end

    reversible do |migration|
      migration.up do
        execute <<-SQL
          ALTER TABLE storages
            ADD CONSTRAINT UQ_storages_name
              UNIQUE (name);
        SQL
      end
      migration.down do
        execute <<-SQL
          ALTER TABLE storages
            DROP CONSTRAINT UQ_storages_name
        SQL
      end
    end
  end
end
