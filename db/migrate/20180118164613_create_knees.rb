class CreateKnees < ActiveRecord::Migration[5.0]
  def change
    create_table :knees do |t|
      t.references :assessment, foreign_key: true

      t.timestamps
    end
  end
end
