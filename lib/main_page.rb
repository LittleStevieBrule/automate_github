class MainPage
  include PageObject

  def initialize
    super(Config.instance.driver)
  end

  def exists?
    
  end
end