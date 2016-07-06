class CreateRtests < ActiveRecord::Migration
  def change
    create_table :rtests do |t|

      t.timestamps null: false
    end
  end
end
