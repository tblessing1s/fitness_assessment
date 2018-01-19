class AddFieldsToKnees < ActiveRecord::Migration[5.0]
  def change
    add_column :knees, :knee_flexion_left, :integer
    add_column :knees, :knee_flexion_right, :integer
    add_column :knees, :knee_extension_left, :integer
    add_column :knees, :knee_extension_right, :integer
  end
end
