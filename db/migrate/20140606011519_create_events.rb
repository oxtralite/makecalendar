class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :calendar_id
      t.string :title
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
