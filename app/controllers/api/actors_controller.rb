class Api::ActorsController < ApplicationController
  # def single_actor_action
  #   @single_actor = Actor.find_by(id: 1)
  #   render "single_actor.json.jb"
  # end

  # def choose_actor_action
  #   @actor = params[:actor]
  #   render "choose_actor.json.jb"
  # end

  def index
    @all_actors = Actor.all.order(age: :desc)
    render "index.json.jb"
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age]
    )
    if @actor.save
      render "show.json.jb"
    else
      render json: { message: @actor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] ||  @actor.first_name
    @actor.last_name = params[:last_name] ||  @actor.last_name
    @actor.known_for = params[:known_for] ||  @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age
    if @actor.save
      render "show.json.jb"
    else
      render json: { message: @actor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @actor = Actor.find_by(id: params[:id])
    @actor.destroy
    render json: {message: "Your actor was destroyed"}
  end
end
