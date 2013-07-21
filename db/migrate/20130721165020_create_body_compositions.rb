class CreateBodyCompositions < ActiveRecord::Migration
  def change
    create_table :body_compositions do |t|
      t.float :weight
      t.float :fat_percent
      t.float :fat
      t.float :lean_percent
      t.float :lean

      t.timestamps
    end
  end
end
