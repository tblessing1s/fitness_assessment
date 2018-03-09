class AddFieldToElbows < ActiveRecord::Migration[5.0]
  def change
    add_column :elbows, :supination_right, :integer
  end
end
