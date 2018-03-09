class AddImageToAssessments < ActiveRecord::Migration[5.0]
  def change
    add_column :assessments, :image, :string
  end
end
