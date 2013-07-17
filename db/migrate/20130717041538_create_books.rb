class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.boolean :available, default: true
      t.timestamp :status_changed_at

      t.timestamps
    end
  end
end
