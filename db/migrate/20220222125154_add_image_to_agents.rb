class AddImageToAgents < ActiveRecord::Migration[6.1]
  def change
    add_column :agents, :image, :string
  end
end
