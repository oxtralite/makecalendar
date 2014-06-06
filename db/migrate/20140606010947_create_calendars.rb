class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :title
      t.string :timezone

      t.timestamps
    end
  end
end
