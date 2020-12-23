class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|

      t.string :english
      t.string :japanese

      t.timestamps
    end
  end
end
