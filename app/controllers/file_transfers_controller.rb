class FileTransfersController < ApplicationController
  def index
    @files = []
    @file_list = []
    records = FileTransfer.all
    records.each do |record|
      record.files.each do |file_record|
        unless file_record.representable?
          next
        end
        @file_list << file_record
      end
    end
  end

  def create
    direction = 'up'
    # file_name = params[:file].filename
    file_name = 'annonymous file'
    file_transfer = FileTransfer.new(
      file_transfer_params.merge(direction: direction, file_name: file_name))
    if file_transfer.save
      flash[:success] = "File Transfer Record Created"
      redirect_to file_transfers_url
    else
      flash[:error] = 'File Transfer Record creation failed'
      render :new
    end
  end

  def new
    @file_transfers = FileTransfer.new
  end

  private
  def file_transfer_params
    params.require(:file_transfer).permit(:direction, :file_name, files: [])
  end
end
