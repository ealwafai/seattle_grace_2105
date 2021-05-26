class Hospital

  attr_reader :name, :chief_of_surgery, :doctors

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary
    total_salaries = 0
    @doctors.each do |doctor|
      total_salaries += doctor.salary
    end
    total_salaries
  end

  def lowest_paid_doctor
    @doctors.each do |doctor|
      doctor.salary.each do |salary|
        salary.min == salary
      end
    end
    doctor.name
  end

  def specialties
    all_specialties = []
    @doctors.each do |doctor|
      all_specialties.push(doctor.specialty)
    end
    all_specialties
  end
end
