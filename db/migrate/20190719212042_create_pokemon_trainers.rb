class CreatePokemonTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_trainers do |t|
      t.string :name

      t.timestamps
    end
  end
end
