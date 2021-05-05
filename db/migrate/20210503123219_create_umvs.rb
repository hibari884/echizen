class CreateUmvs < ActiveRecord::Migration[5.2]
  def change
    create_table :umvs do |t|
      t.string :usrid
      t.string :tr1
      t.string :tr2
      t.string :tr3
      t.string :tr4

      t.timestamps
    end
  end
end
