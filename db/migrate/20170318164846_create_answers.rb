class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :position
      t.integer :question_id
      t.text :answer_html
      t.boolean :fake
      t.timestamps
    end
  end
end
