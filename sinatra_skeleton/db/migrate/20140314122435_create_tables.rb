class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.string :password

      t.timestamps
    end

    create_table :decks do |t|
      t.string :name

      t.timestamps
    end


    create_table :cards do |t|
      t.string :question
      t.string :answer
      t.integer :deck_id

      t.timestamps
    end

    create_table :rounds do |t|
      t.integer :user_id
      t.integer :deck_id
      t.integer :score, 0

      t.timestamps
    end
  end
end
