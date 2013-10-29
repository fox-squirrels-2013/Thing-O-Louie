class CreateDogsleds < ActiveRecord::Migration
  def change
    create_table(:dogsleds) do |t|
      t.string :name
    end
  end
end
