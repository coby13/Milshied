class CreateArticles < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.timestamps
      t.integer :category_id
    end
    Article.create_translation_table! :title => :string, :body => :text
  end
  def down
    drop_table :articles
    Article.drop_translation_table!
  end
end


