class CreateWeeklyBodyCompositions < ActiveRecord::Migration
  def change
    create_table :weekly_body_compositions do |t|
      t.timestamp :taken_at
      t.float :weight
      t.float :fat
      t.float :fat_percent
      t.float :lean
      t.float :lean_percent

      t.timestamps
    end
  end
end
