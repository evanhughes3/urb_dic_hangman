class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.belongs_to :user
      t.integer :value

      t.timestamps
    end
  end
end
