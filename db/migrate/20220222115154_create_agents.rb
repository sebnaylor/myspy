class CreateAgents < ActiveRecord::Migration[6.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.integer :price
      t.integer :height
      t.integer :years_of_service
      t.string :weapon
      t.string :marital_status
      t.integer :ineptitude
      t.integer :evilness
      t.string :category
      t.string :skills
      t.string :gadgets
      t.references :user

      t.timestamps
    end
  end
end
