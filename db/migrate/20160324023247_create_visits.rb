class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :visitor_id, null: false
      t.integer :vistited_url_id, null: false
    end
    add_index :visits, :visitor_id
    add_index :visits, :vistited_url_id
  end
end
