class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.string :name, null: false
      t.references :role, polymorphic: true, index: true

      t.timestamps
    end

    add_index :agents, :name
  end
end
