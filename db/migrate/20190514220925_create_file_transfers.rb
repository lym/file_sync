class CreateFileTransfers < ActiveRecord::Migration[6.0]
  def change
    create_table :file_transfers do |t|
      t.string :direction
      t.string :file_name
      t.string :iana_media_type

      t.timestamps
    end
  end
end
