class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :date
      t.string :archive
      t.text :description
      t.boolean :approve
      t.belongs_to :subject, foreign_key: true

      t.timestamps
    end
  end
end
