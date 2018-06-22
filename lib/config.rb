class Config

  def self.instance
    @instance ||= new
  end

  attr_accessor :driver
end