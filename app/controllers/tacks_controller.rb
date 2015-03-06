class TacksController < ApplicationController
  before_action :set_tack, only: [:show, :update, :destroy]

  # GET /tacks
  # GET /tacks.json
  def index
    @tacks = Tack.all

    render json: @tacks
  end

  # GET /tacks/1
  # GET /tacks/1.json
  def show
    render json: @tack
  end

  # POST /tacks
  # POST /tacks.json
  def create
    @tack = Tack.new(tack_params)

    if @tack.save
      render json: @tack, status: :created, location: @tack
    else
      render json: @tack.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tacks/1
  # PATCH/PUT /tacks/1.json
  def update
    @tack = Tack.find(params[:id])

    if @tack.update(tack_params)
      head :no_content
    else
      render json: @tack.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tacks/1
  # DELETE /tacks/1.json
  def destroy
    @tack.destroy

    head :no_content
  end

  private

    def set_tack
      @tack = Tack.find(params[:id])
    end

    def tack_params
      params.require(:tack).permit(:name)
    end
end
