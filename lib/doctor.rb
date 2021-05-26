class Doctor

  attr_reader :name, :specialty, :education, :salary

  def initialize(profile)
    @name = profile[:name]
    @specialty = profile[:specialty]
    @education = profile[:education]
    @salary = profile[:salary]
  end
end
