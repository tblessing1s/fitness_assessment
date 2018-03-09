class CreateCores < ActiveRecord::Migration[5.0]
  def change
    create_table :cores do |t|
      t.references :assessment, foreign_key: true
      t.integer :trunk_lateral_flexion_left
      t.integer :trunk_lateral_flexion_right
      t.integer :trunk_rotation_left
      t.integer :trunk_rotation_right
      t.integer :trunk_flexion
      t.integer :trunk_extension

      t.timestamps
    end
  end
end
