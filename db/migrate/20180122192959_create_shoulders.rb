class CreateShoulders < ActiveRecord::Migration[5.0]
  def change
    create_table :shoulders do |t|
      t.references :assessment, foreign_key: true
      t.integer :shoulder_flexion_left
      t.integer :shoulder_flexion_right
      t.integer :shoulder_extension_left
      t.integer :shoulder_extension_right
      t.integer :shoulder_abduction_left
      t.integer :shoulder_abduction_right
      t.integer :shoulder_adduction_left
      t.integer :shoulder_adduction_right
      t.integer :shoulder_internal_rotation_left
      t.integer :shoulder_internal_rotation_right
      t.integer :shoulder_external_rotation_left
      t.integer :shoulder_external_rotation_right
      t.integer :shoulder_horizontal_abduction_left
      t.integer :shoulder_horizontal_abduction_right
      t.integer :shoulder_horizontal_adduction_left
      t.integer :shoulder_horizontal_adduction_right

      t.timestamps
    end
  end
end
