class Doctor
  attr_accessor :name
  @@all_doc = [ ]

  def initialize(name)
    @name = name
    @@all_doc << self
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

  def patients
    appointments.map {|appointment| appointment.patient}
  end

  def self.all
    @@all_doc
  end
end
