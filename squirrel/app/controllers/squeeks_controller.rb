class SqueeksController < ApplicationController
  before_action :set_squeek, only: [:show, :edit, :update, :destroy]

  # GET /squeeks
  # GET /squeeks.json
  def index
    @squeeks = Squeek.all
  end

  # GET /squeeks/1
  # GET /squeeks/1.json
  def show
  end

  # GET /squeeks/new
  def new
    @squeek = Squeek.new
  end

  # GET /squeeks/1/edit
  def edit
  end

  # POST /squeeks
  # POST /squeeks.json
  def create
    @squeek = Squeek.new(squeek_params)

    respond_to do |format|
      if @squeek.save
        format.html { redirect_to @squeek, notice: 'Squeek was successfully created.' }
        format.json { render action: 'show', status: :created, location: @squeek }
      else
        format.html { render action: 'new' }
        format.json { render json: @squeek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /squeeks/1
  # PATCH/PUT /squeeks/1.json
  def update
    respond_to do |format|
      if @squeek.update(squeek_params)
        format.html { redirect_to @squeek, notice: 'Squeek was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @squeek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /squeeks/1
  # DELETE /squeeks/1.json
  def destroy
    @squeek.destroy
    respond_to do |format|
      format.html { redirect_to squeeks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_squeek
      @squeek = Squeek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def squeek_params
      params.require(:squeek).permit(:user, :message)
    end
end
