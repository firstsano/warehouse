class CreateAbonents < ActiveRecord::Migration[5.2]
  def change
    create_table :abonents do |t|
      t.string :name, null: false
      t.string :login, null: false
      t.integer :bill_account, null: false
      t.integer :profile_account, null: false

      t.timestamps
    end

    add_index :abonents, :name
    add_index :abonents, :login, unique: true

    reversible do |migration|
      migration.up do
        safety_assured do
          execute <<-SQL
            ALTER TABLE abonents
              ADD CONSTRAINT UQ_abonents_bill_account
                UNIQUE (bill_account);
            ALTER TABLE abonents
              ADD CONSTRAINT UQ_abonents_profile_account
                UNIQUE (profile_account);
          SQL
        end
      end
      migration.down do
        safety_assured do
          execute <<-SQL
            ALTER TABLE abonents
              DROP CONSTRAINT UQ_abonents_bill_account;
            ALTER TABLE abonents
              DROP CONSTRAINT UQ_abonents_profile_account;
          SQL
        end
      end
    end
  end
end
