class LandingPage
  include PageObject

  def initialize
    super(Config.instance.driver)
  end

  def initiate_sign_in
    binding.pry
  end
end