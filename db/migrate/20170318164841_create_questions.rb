class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :position
      t.text :question_html
      t.text :facts
      t.timestamps
    end
  end
end
