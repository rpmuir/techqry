class TqsController < ApplicationController
  before_action :set_tq, only: [:show, :edit, :update, :destroy]

  # GET /tqs
  # GET /tqs.json
  def index
    @tqs = Tq.all
  end

  # GET /tqs/1
  # GET /tqs/1.json
  def show
  end

  # GET /tqs/new
  def new
    @tq = Tq.new
  end

  # GET /tqs/1/edit
  def edit
  end

  # POST /tqs
  # POST /tqs.json
  def create
    @tq = Tq.new(tq_params)

    respond_to do |format|
      if @tq.save
        format.html { redirect_to @tq, notice: 'Tq was successfully created.' }
        format.json { render :show, status: :created, location: @tq }
      else
        format.html { render :new }
        format.json { render json: @tq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tqs/1
  # PATCH/PUT /tqs/1.json
  def update
    respond_to do |format|
      if @tq.update(tq_params)
        format.html { redirect_to @tq, notice: 'Tq was successfully updated.' }
        format.json { render :show, status: :ok, location: @tq }
      else
        format.html { render :edit }
        format.json { render json: @tq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tqs/1
  # DELETE /tqs/1.json
  def destroy
    @tq.destroy
    respond_to do |format|
      format.html { redirect_to tqs_url, notice: 'Tq was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tq
      @tq = Tq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tq_params
      params.require(:tq).permit(:tqid, :client, :projectname, :date, :impact, :query)
    end
end
