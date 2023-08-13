class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :detail_one
      t.string :detail_two
      t.string :detail_three
      t.string :detail_four
      t.string :detail_five

      t.timestamps
    end
  end
end
