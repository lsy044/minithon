class PledgenewsController < ApplicationController
  before_action :set_pledgenews, only: [:show, :edit, :update, :destroy]

  # GET /pledgenews
  # GET /pledgenews.json
  def index
    @pledgenews = Pledgenew.all
  end

  # GET /pledgenews/1
  # GET /pledgenews/1.json
  def show
  end

  # GET /pledgenews/new
  def new
    @pledgenews = Pledgenew.new
  end

  # GET /pledgenews/1/edit
  def edit
  end

  # POST /pledgenews
  # POST /pledgenews.json
  def create
    @pledgenews = Pledgenew.new(pledgenews_params)

    respond_to do |format|
      if @pledgenews.save
        format.html { redirect_to @pledgenews, notice: 'Pledgenew was successfully created.' }
        format.json { render :show, status: :created, location: @pledgenews }
      else
        format.html { render :new }
        format.json { render json: @pledgenews.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pledgenews/1
  # PATCH/PUT /pledgenews/1.json
  def update
    respond_to do |format|
      if @pledgenews.update(pledgenews_params)
        format.html { redirect_to @pledgenews, notice: 'Pledgenew was successfully updated.' }
        format.json { render :show, status: :ok, location: @pledgenews }
      else
        format.html { render :edit }
        format.json { render json: @pledgenews.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pledgenews/1
  # DELETE /pledgenews/1.json
  def destroy
    @pledgenews.destroy
    respond_to do |format|
      format.html { redirect_to pledgenews_url, notice: 'Pledgenew was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pledgenews
      @pledgenews = Pledgenew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pledgenews_params
      params.require(:pledgenews).permit(:name, :title, :content, :title2, :content2, :title3, :content3, :image, :image2)
    end
end
