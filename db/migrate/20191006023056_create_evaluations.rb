class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.references :student, foreign_key: true
      t.references :profesor, foreign_key: true
      t.text :description
      t.integer :mark

      t.timestamps
    end
  end
end
