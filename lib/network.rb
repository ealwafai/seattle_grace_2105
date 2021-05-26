class Network

  attr_reader :name, :hospitals

  def initialize(name)
    @name = name
    @hospitals = []
  end

  def add_hospital(hospital)
    @hospitals.push(hospital)
  end

  def highest_paid_doctor
  end

  def doctors_by_hospital
    all_doctors = []
    @hospitals.each do |hospital|
      hospital.doctors do |doctor|
        all_doctors << doctor
      end
    end
    require "pry"; binding.pry
    doctor_by_hospital = Hash.new
    all_doctors.each do |doctor|
      doctor_by_hospital[hospital.doctor]= []
    end
    all_doctors.each do |doctor|
      doctor_by_hospital[hospital.doctor] << doctor.name
    end
    doctor_by_hospital
  end
end
