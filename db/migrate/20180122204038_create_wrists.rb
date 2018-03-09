class CreateWrists < ActiveRecord::Migration[5.0]
  def change
    create_table :wrists do |t|
      t.references :assessment, foreign_key: true
      t.integer :wrist_flexion_left
      t.integer :wrist_flexion_right
      t.integer :wrist_extension_left
      t.integer :wrist_extension_right
      t.integer :wrist_radial_deviation_left
      t.integer :wrist_radial_deviation_right
      t.integer :wrist_ulnar_deviation_left
      t.integer :wrist_ulnar_deviation_right

      t.timestamps
    end
  end
end
