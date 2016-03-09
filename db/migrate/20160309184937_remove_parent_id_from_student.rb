class RemoveParentIdFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :parent_id, :integer
  end
end
