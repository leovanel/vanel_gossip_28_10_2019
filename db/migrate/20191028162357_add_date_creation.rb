class AddDateCreation < ActiveRecord::Migration[5.2]
  def change 
    add_column :gossips, :date, :datetime
  end
end
