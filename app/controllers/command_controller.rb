class CommandController < ApplicationController
  respond_to :js

  def show
  end

  def create
    Command.new(command_params).save
    render nothing: true
  end

  private

  def command_params
    params.require(:command).permit(:text)
  end
end