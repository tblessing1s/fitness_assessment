class CreateElbows < ActiveRecord::Migration[5.0]
  def change
    create_table :elbows do |t|
      t.references :assessment, foreign_key: true
      t.integer :elbow_flexion_supination_left
      t.integer :elbow_flexion_supination_right
      t.integer :elbow_extension_supination_left
      t.integer :elbow_extension_supination_right
      t.integer :elbow_flexion_neutral_left
      t.integer :elbow_flexion_neutral_right
      t.integer :elbow_extension_neutral_left
      t.integer :elbow_extension_neutral_right
      t.integer :elbow_flexion_pronation_left
      t.integer :elbow_flexion_pronation_right
      t.integer :elbow_extension_pronation_left
      t.integer :elbow_extension_pronation_right
      t.integer :supination_left
      t.integer :supination_left
      t.integer :pronation_left
      t.integer :pronation_right

      t.timestamps
    end
  end
end
