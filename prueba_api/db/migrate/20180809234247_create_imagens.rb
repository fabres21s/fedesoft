class CreateImagens < ActiveRecord::Migration[5.1]
  def change
    create_table :imagens do |t|
      t.string :url
      t.references :user

      t.timestamps
    end
  end
end
