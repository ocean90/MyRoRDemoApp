class LendingsController < ApplicationController
  # GET /lendings
  def index
    @lendings = Lending.all
  end

  # GET /lendings/new
  def new
    @lending = Lending.new
  end

  # POST /lendings
  def create
    @lending = Lending.new(params[:lending])

    if @lending.save
        redirect_to lendings_path, notice: 'Lending was successfully created.'
    else
        render action: "new"
    end
  end
end
