class DosController < ApplicationController
  before_action :set_do, only: %i[ show edit update destroy ]

  # GET /dos or /dos.json
  def index
    @dos = Do.all
  end

  # GET /dos/1 or /dos/1.json
  def show
  end

  # GET /dos/new
  def new
    @do = Do.new
  end

  # GET /dos/1/edit
  def edit
  end

  # POST /dos or /dos.json
  def create
    @do = Do.new(do_params)

    respond_to do |format|
      if @do.save
        format.html { redirect_to do_url(@do), notice: "Do was successfully created." }
        format.json { render :show, status: :created, location: @do }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @do.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dos/1 or /dos/1.json
  def update
    respond_to do |format|
      if @do.update(do_params)
        format.html { redirect_to do_url(@do), notice: "Do was successfully updated." }
        format.json { render :show, status: :ok, location: @do }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @do.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dos/1 or /dos/1.json
  def destroy
    @do.destroy

    respond_to do |format|
      format.html { redirect_to dos_url, notice: "Do was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_do
      @do = Do.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def do_params
      params.require(:do).permit(:breed_date, :buck, :nest_box_date, :due_date, :kindled_date, :born_alive, :born_dead, :kits_weaned, :eight_week_weight, :comments, :rabbit_id)
    end
end
