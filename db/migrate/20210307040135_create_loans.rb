class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.references :book, foreign_key: true
      t.date :loan_beginning
      t.date :loan_end

      t.timestamps
    end
  end
end
