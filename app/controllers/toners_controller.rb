class TonersController < ApplicationController
  # GET /toners
  # GET /toners.json
  def index
    @toners = Toner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @toners }
    end
  end

  # GET /toners/1
  # GET /toners/1.json
  def show
    @toner = Toner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @toner }
    end
  end

  # GET /toners/new
  # GET /toners/new.json
  def new
    @toner = Toner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @toner }
    end
  end

  # GET /toners/1/edit
  def edit
    @toner = Toner.find(params[:id])
  end

  # POST /toners
  # POST /toners.json
  def create
    @toner = Toner.new(params[:toner])

    respond_to do |format|
      if @toner.save
        format.html { redirect_to @toner, notice: 'Toner was successfully created.' }
        format.json { render json: @toner, status: :created, location: @toner }
      else
        format.html { render action: "new" }
        format.json { render json: @toner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /toners/1
  # PUT /toners/1.json
  def update
    @toner = Toner.find(params[:id])

    respond_to do |format|
      if @toner.update_attributes(params[:toner])
        format.html { redirect_to @toner, notice: 'Toner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @toner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toners/1
  # DELETE /toners/1.json
  def destroy
    @toner = Toner.find(params[:id])
    @toner.destroy

    respond_to do |format|
      format.html { redirect_to toners_url }
      format.json { head :no_content }
    end
  end
end
