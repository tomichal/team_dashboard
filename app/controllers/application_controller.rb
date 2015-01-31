class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :new_command

  private

  def new_command
    @command = Command.find || Command.new
  end
end
