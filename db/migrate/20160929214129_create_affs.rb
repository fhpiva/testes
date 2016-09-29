class CreateAffs < ActiveRecord::Migration
  def change
    create_table :affs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
