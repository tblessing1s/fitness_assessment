class AddAssessemntToClients < ActiveRecord::Migration[5.0]
  def change
    add_reference :clients, :assessment, foreign_key: true
  end
end
