class AddBirthdateToUser < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.date :birthdate, null: false
    end
  end
end
