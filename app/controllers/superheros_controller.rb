class SuperherosController < ApplicationController
  before_action :set_team, only: [:index, :new, :create,]
  before_action :set_superhero, only: [:show, :edit, :update, :destroy]

  def index
    @superheros = @team.superheros
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = @team.superheros.create superhero_params
    if @superhero.save
      redirect_to team_superheros_path(@team), flash: {success: "#{@superhero.name} added!"}
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @superhero.update superhero_params
    if @superhero.save
      redirect_to superhero_path(@superhero), flash: {success: "#{@superhero.name} updated!"}
    else
      render :edit
    end
  end

  def destroy
    @superhero.destroy
    redirect_to teams_path, flash: {success: "#{@superhero.name} was successfully deleted"}
  end

  private

  def set_team
    @team = Team.find_by_id params[:team_id]
  end

  def set_superhero
    @superhero = Superhero.find params[:id]
  end

  def superhero_params
    params.require(:superhero).permit(
      :name,
      :bio,
      :height,
      :image_url,
      :team_id
    )
  end
end
