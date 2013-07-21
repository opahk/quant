class AddTimestampToBodyComposition < ActiveRecord::Migration
  def change
    add_column :body_compositions, :taken_at, :datetime
  end
end
