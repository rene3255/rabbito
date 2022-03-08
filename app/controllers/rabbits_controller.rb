class RabbitsController < ApplicationController
  before_action :set_rabbit, only: %i[ show edit update destroy ]

  # GET /rabbits or /rabbits.json
  def index
    @rabbits = Rabbit.all
  end

  # GET /rabbits/1 or /rabbits/1.json
  def show
  end

  # GET /rabbits/new
  def new
    @rabbit = Rabbit.new
  end

  # GET /rabbits/1/edit
  def edit
  end

  # POST /rabbits or /rabbits.json
  def create
    @rabbit = Rabbit.new(rabbit_params)

    respond_to do |format|
      if @rabbit.save
        format.html { redirect_to rabbit_url(@rabbit), notice: "Rabbit was successfully created." }
        format.json { render :show, status: :created, location: @rabbit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rabbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rabbits/1 or /rabbits/1.json
  def update
    respond_to do |format|
      if @rabbit.update(rabbit_params)
        format.html { redirect_to rabbit_url(@rabbit), notice: "Rabbit was successfully updated." }
        format.json { render :show, status: :ok, location: @rabbit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rabbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rabbits/1 or /rabbits/1.json
  def destroy
    @rabbit.destroy

    respond_to do |format|
      format.html { redirect_to rabbits_url, notice: "Rabbit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rabbit
      @rabbit = Rabbit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rabbit_params
      params.require(:rabbit).permit(:name, :purity, :birth_date, :weight, :breed_id)
    end
end
