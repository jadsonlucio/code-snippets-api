class CreateSnippets < ActiveRecord::Migration[6.1]
  def change
    create_table :snippets do |t|
      t.string :author
      t.string :source
      t.string :language
      t.text :code_snippet
      t.text :description
      t.string :algorithm
      t.string :library
      t.string :category
      t.integer :difficulty
      t.string :language_version
      t.string :library_version
      t.string :dependencies

      t.timestamps
    end
  end
end
