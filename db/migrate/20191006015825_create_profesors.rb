class CreateProfesors < ActiveRecord::Migration[5.2]
  def change
    create_table :profesors do |t|
      t.references :user, foreign_key: true
      t.integer :ranking
      t.integer :ev

      t.timestamps
    end
  end
end
