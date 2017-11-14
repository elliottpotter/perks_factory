class PerksController < ApplicationController
  before_action :set_perk, only: [:show, :edit, :update, :destroy]
  layout "perks"

  # GET /perks
  def index
    @perks = Perk.all
  end

  # GET /perks/1
  def show
  end

  # GET /perks/new
  def new
    @perk = Perk.new
  end

  # GET /perks/1/edit
  def edit
  end

  # POST /perks
  def create
    @perk = Perk.new(perk_params)

    if @perk.save
      redirect_to @perk, notice: 'Perk was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /perks/1
  def update
    if @perk.update(perk_params)
      redirect_to @perk, notice: 'Perk was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /perks/1
  def destroy
    @perk.destroy
    redirect_to perks_url, notice: 'Perk was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perk
      @perk = Perk.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def perk_params
      params.require(:perk).permit(:name, :vendor_id, :residence_id, :begins_at, :ends_at, :image)
    end
end
