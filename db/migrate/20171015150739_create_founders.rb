class CreateFounders < ActiveRecord::Migration[5.0]
  def change
    create_table :founders do |t|
    	t.string :name
    	t.text :about
    	t.string :avatar
      t.timestamps
    end
  end
end
