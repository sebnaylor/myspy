class AddLocationToAgents < ActiveRecord::Migration[6.1]
  def change
    add_column :agents, :location, :string
  end
end
