class FortuneFactory < Avram::Factory
  def initialize
    text "Have a Lucky day! #{rand(100)} #{rand(100)} #{rand(100)}"
    # Default assign to user 1
    user_id 1
  end
end
