class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      # これは今は定型文と思えばいい
      t.string :title
      t.string :body
      t.timestamps
    end
  end
end
