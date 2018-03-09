class CreateAnkles < ActiveRecord::Migration[5.0]
  def change
    create_table :ankles do |t|
      t.references :assessment, foreign_key: true
      t.integer :ankle_plantar_flexion_left
      t.integer :ankle_plantar_flexion_right
      t.integer :ankle_dorsiflexion_left
      t.integer :ankle_dorsiflexion_right
      t.integer :ankle_inversion_left
      t.integer :ankle_inversion_right
      t.integer :ankle_eversion_left
      t.integer :ankle_eversion_right

      t.timestamps
    end
  end
end
