class CreateMonsterLabScaffolds < ActiveRecord::Migration[7.0]
  def change
    create_table :monster_lab_scaffolds do |t|
      t.string :titlemonster
      t.text :imagemonster
      t.text :descriptionmonster

      t.timestamps
    end
  end
end
