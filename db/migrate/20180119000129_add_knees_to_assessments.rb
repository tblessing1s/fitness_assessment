class AddKneesToAssessments < ActiveRecord::Migration[5.0]
  def change
    add_reference :assessments, :knee, foreign_key: true
  end
end
