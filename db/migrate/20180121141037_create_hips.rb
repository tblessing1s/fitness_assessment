class CreateHips < ActiveRecord::Migration[5.0]
  def change
    create_table :hips do |t|
      t.references :assessment, foreign_key: true
      t.integer :hip_flexion_right
      t.integer :hip_flexion_left
      t.integer :hip_extension_left
      t.integer :hip_extension_right
      t.integer :hip_abduction_left
      t.integer :hip_abduction_right
      t.integer :hip_adduction_left
      t.integer :hip_adduction_right
      t.integer :hip_internal_rotation_90_left
      t.integer :hip_internal_rotation_90_right
      t.integer :hip_external_rotation_90_left
      t.integer :hip_external_rotation_90_right
      t.integer :hip_internal_rotation_0_left
      t.integer :hip_internal_rotation_0_right
      t.integer :hip_external_rotation_0_left
      t.integer :hip_external_rotation_0_right

      t.timestamps
    end
  end
end
