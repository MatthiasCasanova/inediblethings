class MonsterLabScaffoldsController < ApplicationController
  before_action :set_monster_lab_scaffold, only: %i[ show edit update destroy ]

  # GET /monster_lab_scaffolds or /monster_lab_scaffolds.json
  def index
    @monster_lab_scaffolds = MonsterLabScaffold.all
  end

  # GET /monster_lab_scaffolds/1 or /monster_lab_scaffolds/1.json
  def show
  end

  # GET /monster_lab_scaffolds/new
  def new
    @monster_lab_scaffold = MonsterLabScaffold.new
  end

  # GET /monster_lab_scaffolds/1/edit
  def edit
  end

  # POST /monster_lab_scaffolds or /monster_lab_scaffolds.json
  def create
    @monster_lab_scaffold = MonsterLabScaffold.new(monster_lab_scaffold_params)

    respond_to do |format|
      if @monster_lab_scaffold.save
        format.html { redirect_to monster_lab_scaffold_url(@monster_lab_scaffold), notice: "Monster lab scaffold was successfully created." }
        format.json { render :show, status: :created, location: @monster_lab_scaffold }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @monster_lab_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monster_lab_scaffolds/1 or /monster_lab_scaffolds/1.json
  def update
    respond_to do |format|
      if @monster_lab_scaffold.update(monster_lab_scaffold_params)
        format.html { redirect_to monster_lab_scaffold_url(@monster_lab_scaffold), notice: "Monster lab scaffold was successfully updated." }
        format.json { render :show, status: :ok, location: @monster_lab_scaffold }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @monster_lab_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monster_lab_scaffolds/1 or /monster_lab_scaffolds/1.json
  def destroy
    @monster_lab_scaffold.destroy

    respond_to do |format|
      format.html { redirect_to monster_lab_scaffolds_url, notice: "Monster lab scaffold was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster_lab_scaffold
      @monster_lab_scaffold = MonsterLabScaffold.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monster_lab_scaffold_params
      params.require(:monster_lab_scaffold).permit(:titlemonster, :imagemonster, :descriptionmonster)
    end
end
