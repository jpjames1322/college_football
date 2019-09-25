class CreateColleges < ActiveRecord::Migration[5.2]
  def change
    create_table :colleges do |t|
      t.string :team
      t.string :mascot
      t.string :city

      t.timestamps
    end
  end
end
