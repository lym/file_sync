class CreateIanaMediaTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :iana_media_types do |t|
      t.string :type
      t.string :subtype
      t.string :parameter

      t.timestamps
    end
  end
end
