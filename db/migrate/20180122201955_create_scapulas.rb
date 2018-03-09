class CreateScapulas < ActiveRecord::Migration[5.0]
  def change
    create_table :scapulas do |t|
      t.references :assessment, foreign_key: true
      t.integer :scapula_elevation_left
      t.integer :scapula_elevation_right
      t.integer :scapula_depression_left
      t.integer :scapula_depression_right
      t.integer :scapula_protraction_left
      t.integer :scapula_protraction_right
      t.integer :scapula_retraction_left
      t.integer :scapula_retraction_right
      t.integer :scapula_upward_rotation_left
      t.integer :scapula_upward_rotation_right
      t.integer :scapula_downward_rotation_left
      t.integer :scapula_downward_rotation_right

      t.timestamps
    end
  end
end
