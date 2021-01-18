class Api::ActorsController < ApplicationController
  def single_actor_action
    @single_actor = Actor.find_by(id: 1)
    render "single_actor.json.jb"
  end

  def choose_actor_action
    @actor = params[:actor]
    render "choose_actor.json.jb"
  end
end
