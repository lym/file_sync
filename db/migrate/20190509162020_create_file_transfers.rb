class CreateFileTransfers < ActiveRecord::Migration[6.0]
  def change
    create_table :file_transfers do |t|
      t.string :direction
      t.string :file_name
      t.references :iana_media_type, foreign_key: true

      t.timestamps
    end
  end
end
