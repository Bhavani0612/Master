class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name,              null: false, default: ""
      t.string :semester,          null: false, default: ""
      t.string :language,          null: false, default: ""
      t.string :edition,           null: false, default: ""

      t.timestamps
    end
  end
end
