class AddNameToTrainers < ActiveRecord::Migration[5.0]
  def change
    add_column :trainers, :name, :string
  end
end
