class CreateQueuings < ActiveRecord::Migration
  def change
    create_table :queuings do |t|
      t.references :playlist, index: true, foreign_key: true
      t.references :episode, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
