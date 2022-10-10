class CreateOriginalStrings < ActiveRecord::Migration[7.0]
  def change
    create_table :original_strings do |t|
      t.string :string

      t.timestamps
    end
  end
end
