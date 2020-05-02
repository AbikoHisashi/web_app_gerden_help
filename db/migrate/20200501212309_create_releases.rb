class CreateReleases < ActiveRecord::Migration[5.2]
  def change
    create_table :releases do |t|
      t.text :content

      t.timestamps
    end
  end
end
