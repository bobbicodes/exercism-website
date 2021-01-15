class CreateMentorStudentRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :mentor_student_relationships do |t|
      t.belongs_to :mentor, null: false, foreign_key: {to_table: :users}
      t.belongs_to :student, null: false, foreign_key: {to_table: :users}

      t.boolean :favorite, null: false, default: false
      t.integer :num_discussions, null: false, default: 0

      t.index [:mentor_id, :student_id], unique: true

      t.timestamps
    end
  end
end