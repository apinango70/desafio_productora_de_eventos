class CreateConciertos < ActiveRecord::Migration[6.1]
  def change
    create_table :conciertos do |t|
      t.string :lugar
      t.integer :personas_en_concierto
      t.integer :conciertos_en_el_mes
      t.date :fecha_ultimo_concierto
      t.string :duracion
      t.belongs_to :grupo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
