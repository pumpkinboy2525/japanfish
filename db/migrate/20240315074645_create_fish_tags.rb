class CreateFishTags < ActiveRecord::Migration[6.1]
  def change
    create_table :fish_tags do |t|
      t.references :fish, null: false, foreign_key: true
      t.references :fish_tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
