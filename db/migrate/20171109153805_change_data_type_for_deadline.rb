class ChangeDataTypeForDeadline < ActiveRecord::Migration[5.1]
  def self.up
    change_table :tasks do |t|
      t.change :deadline, :string
    end
  end
  def self.down
    change_table :tasks do |t|
      t.change :deadline, :datetime
    end
  end
end
#Simplier than above
#def change
  #change_column :tasks :deadline :tring
#end