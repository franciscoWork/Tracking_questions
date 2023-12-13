class CreateFormularios < ActiveRecord::Migration[6.1]
  def change
    create_table :formularios do |t|
      t.string :content
      t.boolean :answer

      t.timestamps
    end
  end
end
