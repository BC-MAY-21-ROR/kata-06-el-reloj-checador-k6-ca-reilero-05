# frozen_string_literal: true

class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.datetime :check_datetime
      t.string :action
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
