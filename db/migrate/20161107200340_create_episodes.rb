#
class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end
