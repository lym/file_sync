class FileTransfer < ApplicationRecord
  belongs_to :iana_media_type
  has_one_attached :file
end
