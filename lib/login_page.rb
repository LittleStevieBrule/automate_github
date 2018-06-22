class LoginPage
  include PageObject

  def initialize
    super(Config.instance.driver)
  end

  def login(username, password)
    
  end
end