class DoerabbitsController < ApplicationController
  before_action :set_doerabbit, only: %i[ show edit update destroy ]

  # GET /doerabbits or /doerabbits.json
  def index
    @doerabbits = Doerabbit.all
  end

  # GET /doerabbits/1 or /doerabbits/1.json
  def show
  end

  # GET /doerabbits/new
  def new
    @doerabbit = Doerabbit.new
  end

  # GET /doerabbits/1/edit
  def edit
  end

  # POST /doerabbits or /doerabbits.json
  def create
    @doerabbit = Doerabbit.new(doerabbit_params)

    respond_to do |format|
      if @doerabbit.save
        format.html { redirect_to doerabbit_url(@doerabbit), notice: "Doerabbit was successfully created." }
        format.json { render :show, status: :created, location: @doerabbit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @doerabbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doerabbits/1 or /doerabbits/1.json
  def update
    respond_to do |format|
      if @doerabbit.update(doerabbit_params)
        format.html { redirect_to doerabbit_url(@doerabbit), notice: "Doerabbit was successfully updated." }
        format.json { render :show, status: :ok, location: @doerabbit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @doerabbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doerabbits/1 or /doerabbits/1.json
  def destroy
    @doerabbit.destroy

    respond_to do |format|
      format.html { redirect_to doerabbits_url, notice: "Doerabbit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doerabbit
      @doerabbit = Doerabbit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doerabbit_params
      params.require(:doerabbit).permit(:breed_date, :buck, :nest_box_date, :due_date, :kindled_date, :born_alive, :born_dead, :kits_weaned, :eight_week_weight, :comments, :rabbit_id)
    end
end
