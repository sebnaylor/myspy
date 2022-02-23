class AddCoordinatesToAgents < ActiveRecord::Migration[6.1]
  def change
    add_column :agents, :latitude, :float
    add_column :agents, :longitude, :float
  end
end
