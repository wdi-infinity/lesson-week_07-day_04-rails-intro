class CreateBooks < ActiveRecord::Migration[5.2]
    def change
      create_table :blogs do |b|
        b.string :wlcome
        b.timestamps
      end
    end
  end