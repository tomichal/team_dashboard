class CommandController < ApplicationController
  respond_to :json

  def show
    respond_with(Command.find)
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