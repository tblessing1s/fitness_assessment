class AddPelvicStabilityToCores < ActiveRecord::Migration[5.0]
  def change
    add_column :cores, :pelvic_stability, :integer
  end
end
