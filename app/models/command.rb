class Command
  include ActiveModel::Model

  attr_accessor :text

  delegate :exists?, to: :class

  PATH = File.join(Rails.root, "app", "views", "command", "show.js")

  def save
    clear
    write
  end

  def clear
    File.truncate(PATH, 0) if exists?
  end

  class << self
    def exists?
      File.exist?(PATH)
    end

    def find
      new(text: File.read(PATH)) if exists?
    end
  end

  private

  def write
    File.open(PATH, "w") {|file| file.write(text) }
  end
end