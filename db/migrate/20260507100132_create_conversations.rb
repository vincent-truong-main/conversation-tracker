class CreateConversations < ActiveRecord::Migration[8.0]
  def change
    create_table :conversations do |t|
      t.string :person
      t.string :company
      t.string :role
      t.string :source
      t.integer :energy
      t.integer :engagement
      t.text :notes
      t.string :next_action

      t.timestamps
    end
  end
end
