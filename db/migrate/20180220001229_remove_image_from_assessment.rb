class RemoveImageFromAssessment < ActiveRecord::Migration[5.0]
  def change
    remove_column :assessments, :image, :string
  end
end
